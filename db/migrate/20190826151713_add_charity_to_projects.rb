class AddCharityToProjects < ActiveRecord::Migration[5.2]
  def change
    add_reference :projects, :charity, foreign_key: true
  end
end
