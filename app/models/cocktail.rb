class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true

  # multi-search
  include PgSearch::Model
  multisearchable against: [:name]

  # multi-search-usage => rails c
  # PgSearch::Multisearch.rebuild(Cocktail)
  # PgSearch::Multisearch.rebuild(Ingredient)
  # results = PgSearch.multisearch('gin')

  # results.each do |result|
  #   puts result.searchable
  # end

  def avg_rating
    Review.where(cocktail_id: id).average(:rating).round
  end
end
