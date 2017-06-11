class RecordsController < ApplicationController
  before_action :authenticate_patient!
  def new
    @doctors = Doctor.all
  end
end
