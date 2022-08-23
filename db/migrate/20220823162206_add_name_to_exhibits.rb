class AddNameToExhibits < ActiveRecord::Migration[6.1]
  def change
    add_column :exhibits, :name, :string
  end
end
