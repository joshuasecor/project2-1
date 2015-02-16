class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    room = Room.new(params.require(:room).permit(:topic))
    if room.save
      redirect_to rooms_path
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  def update
  end

  def destroy
  end
  
end
