class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :destroy]

  def new
    @room = Room.new
  end

  def create
    @room = current_user.rooms.create(room_params)
    if @room.save
      redirect_to @room
    else
      render :new
    end
  end

  def show
    @users = @room.users
    @message = @room.messages.create(message_params.merge(user_id: current_user.id))
  end

  def destroy
    @room.delete
  end

  private

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:title)
  end

  def message_params
    params.require(:message).permit(:body, :user_id)
  end
end
