class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :content
      t.string :reviewer_name
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
