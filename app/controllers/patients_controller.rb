class PatientsController < ApplicationController
  def show
    @patient = current_patient
    @records = @patient.records
  end

  def edit
  end
end
