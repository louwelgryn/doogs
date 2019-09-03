class ChatRoomsController < ApplicationController

  def show
    @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
    authorize @chat_room
    if params[:query].present?
      sql_query = " content @@ :query"
      @chat_room_messages = @chat_room.messages.where(sql_query, query: "%#{params[:query]}%")
    end
    respond_to do |format|
      format.html
      format.js
    end
  end
end
