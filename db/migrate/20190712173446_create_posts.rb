class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :post_image_id
      t.string :title
      t.string :hospital
      t.string :cost
      t.text :body

      t.timestamps
    end
  end
end
