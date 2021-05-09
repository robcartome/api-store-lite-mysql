# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category
  validates :name, presence: true

  include PgSearch
  pg_search_scope :search_by_term, against: [:name],
                                   using: {
                                     tsearch: {
                                       any_word: true,
                                       prefix: true
                                     }
                                   }
end
