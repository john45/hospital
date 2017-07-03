class GoogleAuthsController < ApplicationController
  def redirect
    client = Signet::OAuth2::Client.new({
      client_id: Rails.application.secrets.google_client_id,
      client_secret: Rails.application.secrets.google_client_secret,
      authorization_uri: 'https://accounts.google.com/o/oauth2/auth',
      scope: Google::Apis::CalendarV3::AUTH_CALENDAR,
      redirect_uri: callback_url
    })

    redirect_to client.authorization_uri.to_s
  end

  def callback
    client = Signet::OAuth2::Client.new({
      client_id: Rails.application.secrets.google_client_id,
      client_secret: Rails.application.secrets.google_client_secret,
      token_credential_uri: 'https://accounts.google.com/o/oauth2/token',
      redirect_uri: callback_url,
      code: params[:code]
    })

    response = client.fetch_access_token!

    session[:authorization] = response

    service = Google::Apis::CalendarV3::CalendarService.new
    service.authorization = client

    @calendar_list = service.list_calendar_lists
    session[:calendar_id] = @calendar_list.items.first.id

    redirect_to patient_path(current_patient.id)
  end

  def calendars
    client = Signet::OAuth2::Client.new({
      client_id: Rails.application.secrets.google_client_id,
      client_secret: Rails.application.secrets.google_client_secret,
      token_credential_uri: 'https://accounts.google.com/o/oauth2/token'
    })

    client.update!(session[:authorization])

    service = Google::Apis::CalendarV3::CalendarService.new
    service.authorization = client

    @calendar_list = service.list_calendar_lists
    session[:calendar_id] = @calendar_list.items.first.id
  end

  # def events
  #   client = Signet::OAuth2::Client.new({
  #     client_id: Rails.application.secrets.google_client_id,
  #     client_secret: Rails.application.secrets.google_client_secret,
  #     token_credential_uri: 'https://accounts.google.com/o/oauth2/token'
  #   })

  #   client.update!(session[:authorization])

  #   service = Google::Apis::CalendarV3::CalendarService.new
  #   service.authorization = client

  #   @event_list = service.list_events(params[:calendar_id])
  # end

  def new_event

    client = Signet::OAuth2::Client.new({
      client_id: Rails.application.secrets.google_client_id,
      client_secret: Rails.application.secrets.google_client_secret,
      token_credential_uri: 'https://accounts.google.com/o/oauth2/token'
    })

    client.update!(session[:authorization])

    service = Google::Apis::CalendarV3::CalendarService.new
    service.authorization = client


    today = Date.today

    record = Record.find(params[:record_id])
    # binding.pry

    event = Google::Apis::CalendarV3::Event.new({
      start: Google::Apis::CalendarV3::EventDateTime.new(date: record.date_start.to_date),
      end: Google::Apis::CalendarV3::EventDateTime.new(date: record.date_end.to_date),
      reminders: Google::Apis::CalendarV3::EventDateTime.new(useDefault: true),
      summary: "Прием у доктора
      #{record.doctor.doctor_detail.first_name}
      #{record.doctor.doctor_detail.last_name} по специализации:
      #{record.doctor.specialization.title}"
    })

    service.insert_event(session[:calendar_id], event)
    flash.notice = 'Напоминание о визите к врачу было добавлено вам в календарь!'
    redirect_to patient_path(current_patient.id) # events_url(calendar_id: params[:calendar_id])
  end
end
