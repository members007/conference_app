class Opinion < ApplicationRecord
    def show
        @opinions = Opinion.where(topic_id: params[:topic_id])
    end
    validates :opinion, presence: true
    validates :topic_id, presence: true
    validates :eval, presence: true
end
