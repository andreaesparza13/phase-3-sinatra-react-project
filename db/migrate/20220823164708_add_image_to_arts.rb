class AddImageToArts < ActiveRecord::Migration[6.1]
  def change
    add_column :arts, :image_url, :string
  end
end
