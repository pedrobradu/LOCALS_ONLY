class LinkedTag < ApplicationRecord
  belongs_to :tag
  belongs_to :user
  belongs_to :activity
end
