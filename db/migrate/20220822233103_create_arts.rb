class CreateArts < ActiveRecord::Migration[6.1]
  def change
    create_table :arts do |t|
      t.string :title
      t.string :description
      t.string :price
      t.string :image_url
      t.integer :user_id
      t.integer :category_id
      t.timestamps
    end
  end
end
