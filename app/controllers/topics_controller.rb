class TopicsController < ApplicationController
  def index
  end

  def show
    @topics = Topic.where(room_id:  params[:room_id])    
    @room = Room.find_by(id: params[:room_id])
  end

  def new
    @topic= Topic.new
  end

  def create
    @topic = Topic.new(topic: params[:topic], room_id: @current_room.id)
    @room = Room.find_by(id: @current_room.id)
    if @topic.save
      redirect_to("/topics/#{@topic.room_id}")
    else 
      render("topics/new")
    end
  end


end
