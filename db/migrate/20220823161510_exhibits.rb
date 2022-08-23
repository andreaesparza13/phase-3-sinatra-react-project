class Exhibits < ActiveRecord::Migration[6.1]
  def change
    create_table :exhibits do |t|
      t.string :location
      t.string :theme
      t.string :name
    end
  end
end
