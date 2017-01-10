class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.belongs_to :category, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
