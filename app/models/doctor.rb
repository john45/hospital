# == Schema Information
#
# Table name: doctors
#
#  id          :integer          not null, primary key
#  first_name  :string
#  last_name   :string
#  middle_name :string
#  born        :date
#  about       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  manager_id  :integer          default(0)
#

class Doctor < ApplicationRecord
  has_many :subordinates, class_name: 'Doctor', foreign_key: 'manager_id'
  belongs_to :manager, class_name: 'Doctor'

  has_one :avatar, as: :imageable

  has_many :records
  has_many :patients, through: :records

  has_many :specializations
  has_one :doctor_worktime

  validates :manager, presence: true, allow_nil: true, allow_blank: true
end
