class Review < ApplicationRecord
  belongs_to :activity
  belongs_to :user

  after_save :update_ranking
  after_destroy :update_ranking

  validates :content, :rating, presence: true

  private

  def update_ranking
    self.activity.ranking = self.activity.average
    self.activity.save
  end
end
