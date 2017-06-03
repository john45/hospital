class Avatar < ApplicationRecord
  belongs_to :imageable, polymorphic: true
end
