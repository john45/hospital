class PatientsController < ApplicationController
  def show
    @patient = Patient.find(params[:id])
    @records = @patient.records
  end

  def edit;end
end
