class Tag < ApplicationRecord

  has_many :linked_tags, dependent: :destroy

  scope :user_tags, -> { where(tag_type: "user") }
  scope :activity_tags, -> { where(tag_type: "activity") }

#   ACTIVITYTAGS = [
#       ["Restaurante",
#           [["Japonês", "10"], ["Italiano", "11"], ["Churrasco", "12"]]],
#       ["Bar",
#           [["Cerveja", "13"], ["Drinks", "14"], ["Café", "15"]]],
#       ["Estilo",
#           [["Amigos", "16"], ["Romântico", "17"], ["Família", "18"], ["Pet-Friendly", "19"]]],
#       ["Música",
#           [["Rock", "20"], ["Sertanejo", "21"], ["Eletrônica", "22"]]],
#       ["Ambiente",
#           [["Dança", "23"], ["Trilha", "24"], ["Yoga", "25"], ["Musculação", "26"], ["Palestra", "27"]]]
#       ]
end
