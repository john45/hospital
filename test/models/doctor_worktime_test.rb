# == Schema Information
#
# Table name: doctor_worktimes
#
#  id             :integer          not null, primary key
#  doctor_id      :integer
#  days           :string           default("[monday, tuesday, wednesday, thurteday, friday]")
#  start_hours    :integer          default(8)
#  start_minutes  :integer          default(0)
#  finish_hours   :integer          default(18)
#  finish_minutes :integer          default(0)
#  lunch_start    :integer          default(13)
#  lunch_finish   :integer          default(14)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  duration       :integer
#

require 'test_helper'

class DoctorWorktimeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
