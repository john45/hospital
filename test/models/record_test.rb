# == Schema Information
#
# Table name: records
#
#  id         :integer          not null, primary key
#  doctor_id  :integer
#  patient_id :integer
#  confirm    :boolean          default(FALSE)
#  finish     :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  date_start :datetime
#  date_end   :datetime
#

require 'test_helper'

class RecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
