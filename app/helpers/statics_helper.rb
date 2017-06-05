module StaticsHelper
  def published_time(doctor)
    doctor.created_at.strftime('%Y-%-m-%-d %k:%M')
  end
end
