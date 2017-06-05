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

require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
