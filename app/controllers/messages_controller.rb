class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    authorize @chatroom
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(locals: { message: @message }, partial: "feed")
      )
      head :ok
    else
      render "activities/show", status: :unprocessable_entity
    end
  end

  def destroy
    @message = Message.find(params[:id])
    authorize @message
    @message.destroy
    redirect_to activity_path(@message.chatroom.activity),
                notice: "Your message has been successfully deleted",
                status: :see_other
  end

  private

  def message_params
    params.require(:message).permit(%i[content])
  end
end
