class Tag < ApplicationRecord
    scope :user_tags, -> { where(tag_type: "user") }
    scope :activity_tags, -> { where(tag_type: "activity") }
end
