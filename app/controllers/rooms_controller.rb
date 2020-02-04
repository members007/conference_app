class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end
  
  def new
    
  end
  
  def create
    @room = Room.new(name: params[:name], password: params[:password])
    if @room.save
      redirect_to("/topics/#{@room.id}")
    else 
      render("rooms/new")
    end
  end

  def login_form
    
  end

  def login
    @room = Room.find_by(name: params[:name], password: params[:password])
    if @room
      flash[:notice] = "ログインしました"
      session[:room_id] = @room.id
      redirect_to("/topics/#{@room.id}")
    else 
      render("rooms/login")
    end
  end

end
