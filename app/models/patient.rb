# == Schema Information
#
# Table name: patients
#
#  id           :integer          not null, primary key
#  first_name   :string
#  last_name    :string
#  middle_name  :string
#  born         :date
#  insurance_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Patient < ApplicationRecord
  has_one :avatar, as: :imageable

  has_many :records
  has_many :doctors, through: :records
end
