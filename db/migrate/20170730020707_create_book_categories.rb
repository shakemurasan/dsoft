class CreateBookCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :book_categories do |t|
      t.references :book, null: false, index: true, foreign_key: true
      t.references :category, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end
