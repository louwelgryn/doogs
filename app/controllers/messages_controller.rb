class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    @chat_room = ChatRoom.find(params[:chat_room_id])
    authorize @message
    @message.chat_room = @chat_room
    @message.user = current_user
    if @message.save
      respond_to do |format|
        format.html {redirect_to chat_room_path(@chat_room)}
        format.js
      end
    else
      respond_to do |format|
        format.html {render "chat_room/show"}
        format.js
      end
    end
  end

  def upvote
    @message = Message.find(params[:id])
    authorize @message
    @message.upvote_by current_user
    redirect_to project_dashboard_path(@message.chat_room.project_id, anchor: 'chatroom')
  end

  def downvote
    @message = Message.find(params[:id])
    authorize @message
    @message.downvote_by current_user
    redirect_to project_dashboard_path(@message.chat_room.project_id, anchor: 'chatroom')
  end


  private

 def message_params
  params.require(:message).permit(:content)
 end
end
