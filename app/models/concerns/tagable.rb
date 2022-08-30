module Tagable
    extend ActiveSupport::Concern
  
    included do
      has_many :linked_tags, :as => :tagable, dependent: :destroy
      has_many :tags, through: :linked_tags 
    end
  end