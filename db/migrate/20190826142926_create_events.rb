class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :status
      t.text :description
      t.string :hub
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
