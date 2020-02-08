class UnlikesController < ApplicationController
  def index
  end

  def create
    @unlike = Unlike.new(opinion_id: params[:opinion_id])
    @unlike.save
    @opinion = Opinion.find_by(id: @unlike.opinion_id)
    @opinion.eval -=  1 
    @opinion.save
    redirect_to("/opinions/#{@current_topic.id}")
    
  end
end
