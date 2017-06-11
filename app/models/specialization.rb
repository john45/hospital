# == Schema Information
#
# Table name: specializations
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  position_id :integer
#

class Specialization < ApplicationRecord
  has_many :positions
end
