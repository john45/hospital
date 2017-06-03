class Patient < ApplicationRecord
  has_one :avatar, as: :imageable

  has_many :records
  has_many :doctors, through: :records
end
