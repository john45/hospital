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

require 'test_helper'

class AvatarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
