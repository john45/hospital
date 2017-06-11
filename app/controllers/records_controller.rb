class RecordsController < ApplicationController
  before_action :authenticate_patient!
  def new
    @specializations = Specialization.all
    @doctors = Doctor.all
  end
end
