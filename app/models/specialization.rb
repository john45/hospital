# == Schema Information
#
# Table name: specializations
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Specialization < ApplicationRecord
  has_many :positions
  has_many :doctors, through: :positions
end
