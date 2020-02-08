class LikesController < ApplicationController
  def index
  end

  def create
    @like = Like.new(opinion_id: params[:opinion_id])
    @like.save
    @opinion = Opinion.find_by(id: @like.opinion_id)
    @opinion.eval +=  1 
    @opinion.save
    redirect_to("/opinions/#{@current_topic.id}")
    
  end
end
