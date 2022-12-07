class CreateSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.string :isbn
      t.string :title
      t.date :release_year
      t.string :author
      t.string :category
      t.decimal :min_price
      t.decimal :max_price

      t.timestamps
    end
  end
end
