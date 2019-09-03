class CreateRessources < ActiveRecord::Migration[5.2]
  def change
    create_table :ressources do |t|
      t.references :project, foreign_key: true
      t.string :source

      t.timestamps
    end
  end
end
