class AddNameToRessources < ActiveRecord::Migration[5.2]
  def change
    add_column :ressources, :name, :string
  end
end
