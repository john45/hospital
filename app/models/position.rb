# == Schema Information
#
# Table name: positions
#
#  id         :integer          not null, primary key
#  doctor_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Position < ApplicationRecord
  belongs_to :doctor
  belongs_to :specialization
end
