class User < ApplicationRecord
  has_many :wishlists
  has_many :reviews
  has_many :linked_tags

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
