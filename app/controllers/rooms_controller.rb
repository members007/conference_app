class RoomsController < ApplicationController
  def top
  end
  
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
      @error_message = "会議室名またはpasswordが違います"
      render("rooms/login")
    end
  end

end
