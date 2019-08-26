class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :status
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
      t.text :description
      t.string :name
      t.string :priority_level

      t.timestamps
    end
  end
end
