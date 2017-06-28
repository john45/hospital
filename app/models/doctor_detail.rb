# == Schema Information
#
# Table name: doctor_details
#
#  id           :integer          not null, primary key
#  first_name   :string
#  last_name    :string
#  middle_name  :string
#  born         :date
#  insurance_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  doctor_id    :integer
#

class DoctorDetail < ApplicationRecord
  belongs_to :doctor
end
