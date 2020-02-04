class ApplicationController < ActionController::Base
    before_action :set_current_room
    before_action :set_current_topic

    def set_current_room
        @current_room = Room.find_by(id: session[:room_id]) 
    end

    def set_current_topic
        @current_topic = Topic.find_by(id: session[:topic_id]) 
    end

end
