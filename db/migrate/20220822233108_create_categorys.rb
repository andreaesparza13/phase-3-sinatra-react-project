class CreateCategorys < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :category_name
      t.string :image_url
    end
  end
end
