# frozen_string_literal: true

class Product < ApplicationRecord
  self.table_name = 'product'
  # set_foreign_key = 'category'
  belongs_to :category, foreign_key: :id
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
