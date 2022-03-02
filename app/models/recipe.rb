class Recipe < ApplicationRecord
  include Abyme::Model

  has_many :ingredients
  abymize :ingredients, permit: :all_attributes
  validates :name, presence: true
end
