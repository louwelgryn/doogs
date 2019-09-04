class AddContentToRessource < ActiveRecord::Migration[5.2]
  def change
    add_column :ressources, :content_type, :string
  end
end
