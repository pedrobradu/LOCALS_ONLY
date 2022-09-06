class Activity < ApplicationRecord
  has_many :wishlist_items, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :checkins, dependent: :destroy

  include Tagable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def average
    if reviews.present?
      (reviews.sum(:rating) / reviews.count.to_f).round(1)
    end
  end

  def top_tags
    tags.group(:id).order("count_id DESC").limit(3).count(:id).map { |tag, _count| Tag.find(tag) }

  end
end
