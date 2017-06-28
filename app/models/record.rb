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

class Record < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  default_scope { order(date_start: :desc) }
end
