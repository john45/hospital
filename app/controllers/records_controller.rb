class RecordsController < ApplicationController
  before_action :authenticate_patient!
  def new
    @specializations = Specialization.all
    @doctors = Doctor.all
  end

  def get_doctors
    # binding.pry
    @doctors = Specialization.find(params[:specialization].to_i).doctors
    respond_to do |format|
      format.html { redirect_to root_path}
      format.js {  }
    end
  end

  def show_doctor_event
    @doctor = Doctor.find(params[:doctor_id])
    @choice_date = params[:choice_date]

    respond_to do |format|
      format.html { redirect_to root_path}
      format.js {  }
    end
  end


end
