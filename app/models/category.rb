# frozen_string_literal: true

class Category < ApplicationRecord
  self.table_name = 'category'
  has_many :products
  validates :name, presence: true
end
