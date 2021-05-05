# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :url_image
      t.float :price, default: 0
      t.integer :discount, default: 0
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
