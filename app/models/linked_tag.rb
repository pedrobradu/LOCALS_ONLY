class LinkedTag < ApplicationRecord
  belongs_to :tag
  belongs_to :tagable
end
