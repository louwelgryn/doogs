class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :image, :string
    add_column :users, :description, :text
    add_column :users, :level, :string, default: "Piou piou"
  end
end
