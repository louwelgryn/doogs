class AddStartTimeToParticipations < ActiveRecord::Migration[5.2]
  def change
    add_column :participations, :start_time, :datetime
  end
end
