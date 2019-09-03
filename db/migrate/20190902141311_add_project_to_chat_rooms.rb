class AddProjectToChatRooms < ActiveRecord::Migration[5.2]
  def change
    add_reference :chat_rooms, :project, foreign_key: true
  end
end
