class CreateVolunteerSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :volunteer_skills do |t|
      t.references :skill, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
