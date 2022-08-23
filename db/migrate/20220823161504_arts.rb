class Arts < ActiveRecord::Migration[6.1]
  def change
    create_table :arts do |t|
      t.string :title
      t.string :medium
      t.string :description
      t.string :image_url
      t.integer :artist_id
      t.integer :exhibit_id
    end
  end
end
