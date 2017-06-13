class RecordsController < ApplicationController
  before_action :authenticate_patient!
  def new
    @specializations = Specialization.all
    @doctors = Doctor.all
  end

  def get_doctors
    # binding.pry
    @doctors = Specialization.where()
    respond_to do |format|
      format.html { redirect_to root_path}
      format.js {  }
    end
  end
end
