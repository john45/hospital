# == Schema Information
#
# Table name: specializations
#
#  id          :integer          not null, primary key
#  doctor_id   :integer
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class SpecializationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
