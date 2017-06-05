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

require 'test_helper'

class DoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
