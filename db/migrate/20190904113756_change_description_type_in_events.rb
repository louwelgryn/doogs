class ChangeDescriptionTypeInEvents < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :description, :string
  end
end
