class CreateCategorys < ActiveRecord::Migration[6.1]
  def change
    create_table :categorys do |t|
      t.string :type
      t.string :image_url
  end
end
