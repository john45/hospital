class RecordsController < ApplicationController
  before_action :authenticate_patient!

  def index
    @specializations = Specialization.all
    @doctors = Doctor.all
  end

  def show
  end

  def new
    @ds = Time.parse(params[:choice_date]) + params[:date_start].to_i.hour
    @doctor = Doctor.find(params[:doctor_id])

    @record = @doctor.records.build(patient_id: current_patient.id,
                         date_start: @ds,
                         date_end: @ds + @doctor.doctor_worktime.duration.to_i.hour)
  end

  def create
    @record = Record.new(doctor_id: params[:doctor_id],
                         patient_id: params[:patient_id],
                         date_start: params[:date_start],
                         date_end: params[:date_end])
    @record.save
    redirect_to records_path
  end

  def get_doctors
    @doctors = Specialization.find(params[:specialization].to_i).doctors
    respond_to do |format|
      format.html { redirect_to root_path}
      format.js {  }
    end
  end

  def show_doctor_event
    @doctor = Doctor.find(params[:doctor_id])
    @choice_date = Time.parse(params[:choice_date])
    @doctor_records = @doctor.records.where("date_start >= ? and date_end <= ?",
                                             @choice_date,
                                             @choice_date.tomorrow - 1 )
    @events_list = []
    @doctor_records.each { |event| @events_list << event.date_start.strftime('%H').to_i}
    # binding.pry

    respond_to do |format|
      format.html { redirect_to root_path}
      format.js {  }
    end
  end
end
