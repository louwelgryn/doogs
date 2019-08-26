class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.references :association, foreign_key: true
      t.string :name
      t.text :description
      t.string :status
      t.date :start_date
      t.date :end_date
      t.string :image
      t.string :development_goal

      t.timestamps
    end
  end
end
