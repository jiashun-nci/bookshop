class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.text :desc
      t.integer :page_number
      t.date :release_year
      t.string :image_url
      t.references :author, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
