# == Schema Information
#
# Table name: records
#
#  id         :integer          not null, primary key
#  doctor_id  :integer
#  patient_id :integer
#  date_start :date
#  date_end   :date
#  confirm    :boolean          default(FALSE)
#  finish     :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class RecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
