class CreateCommitments < ActiveRecord::Migration[5.2]
  def change
    create_table :commitments do |t|
      t.references :skill, foreign_key: true
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
