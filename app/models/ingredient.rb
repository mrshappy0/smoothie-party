class Ingredient < ApplicationRecord
    has_many :smoothie_ingredients
    has_many :smoothie, through: :smoothie_ingredients
end
