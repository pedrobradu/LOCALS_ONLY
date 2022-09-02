class Tag < ApplicationRecord
    scope :user_tags, -> { where(tag_type: "user") }
    scope :activity_tags, -> { where(tag_type: "activity") }

    ACTIVITYTAGS = [
        ["Restaurante", 
            [["Japonês"], ["Italiano"], ["Churrasco"]]],
        ["Bar",
            [["Cerveja"], ["Drinks"], ["Café"]]],
        ["Estilo",
            [["Amigos"], ["Romantico"], ["Família"], ["Pet-Friendely"]]],
        ["Música",
            [["Rock"], ["Sertanejo"], ["Eletrônica"]]],
        ["Ambiente",
            [["Dança"], ["Trilha"], ["Yoga"], ["Musculação"], ["Palestra"]]]
        ]
end
