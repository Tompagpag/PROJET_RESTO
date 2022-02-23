class Recipe < ApplicationRecord
  include Abyme::Model

  has_many :ingredients
  validates :name, presence: true
  abymize :ingredients, permit: :all_attributes
end
