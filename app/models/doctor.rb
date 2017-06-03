class Doctor < ApplicationRecord
  has_many :subordinates, class_name: 'Doctor', foreign_key: 'manager_id'
  belongs_to :manager, class_name: 'Doctor'

  has_one :avatar, as: :imageable

  has_many :records
  has_many :patients, through: :records
end
