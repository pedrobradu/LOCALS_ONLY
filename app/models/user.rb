class User < ApplicationRecord
  has_many :wishlists, dependent: :destroy
  has_many :reviews
  has_many :checkins
  has_many :chat_memberships
  has_many :chatrooms, through: :chat_memberships
  has_one_attached :photo

  include Tagable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  after_create :user_wishlist

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def user_wishlist
    wishlist = Wishlist.new
    wishlist.user = self
    wishlist.title = "Meus Favoritos:"
    wishlist.save
  end

end
