class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, presence: true, uniqueness: true

  # multi-search => usage: rails c
  include PgSearch::Model
  multisearchable against: [:name]
end
