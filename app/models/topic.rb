class Topic < ApplicationRecord
    validates :topic, presence: true
    validates :room_id, presence: true
end
