module Tagable
    extend ActiveSupport::Concern
  
    included do
      has_many :tags, :as => :tagable
    end
  end