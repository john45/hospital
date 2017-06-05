# == Schema Information
#
# Table name: avatars
#
#  id             :integer          not null, primary key
#  name           :string
#  imageable_type :string
#  imageable_id   :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Avatar < ApplicationRecord
  belongs_to :imageable, polymorphic: true
end
