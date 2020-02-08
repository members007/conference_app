class OpinionsController < ApplicationController
  def index
  end

  def show
    session[:topic_id] = params[:topic_id]    
    @current_topic = Topic.find_by(id: session[:topic_id])
    @opinions = Opinion.where(topic_id: session[:topic_id]).order(eval: :desc)    

  end

  def new
    @current_topic = Topic.find_by(id: session[:topic_id])
    @opinion= Opinion.new
  end

  def create
    @opinion = Opinion.new(opinion: params[:opinion], topic_id: @current_topic.id, eval: 0)
    if @opinion.save
      redirect_to("/opinions/#{@opinion.topic_id}")
    else 
      render("opinions/new")
    end
  end


end
