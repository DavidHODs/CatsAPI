class CreateCatPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :cat_posts do |t|
      t.string :name
      t.integer :age
      t.string :color

      t.timestamps
    end
  end
end
