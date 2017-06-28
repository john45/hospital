# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  name                   :string
#  born                   :date
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  type                   :string
#  manager_id             :integer
#

class Doctor < User
  has_one :doctor_detail
  has_many :subordinates, class_name: 'Doctor', foreign_key: 'manager_id'
  belongs_to :manager, class_name: 'Doctor', optional: true

  has_one :avatar, as: :imageable

  has_many :records
  has_many :patients, through: :records

  has_one :position
  has_one :specialization, through: :position

  has_one :doctor_worktime

  # validates :manager, presence: true, allow_nil: true, allow_blank: true
end
