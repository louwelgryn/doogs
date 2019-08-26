class CreateAssociations < ActiveRecord::Migration[5.2]
  def change
    create_table :associations do |t|
      t.string :name
      t.text :description
      t.string :referent_name
      t.string :referent_position
      t.string :referent_image
      t.string :logo

      t.timestamps
    end
  end
end
