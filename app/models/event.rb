class Event < ApplicationRecord

    belongs_to :user

    has_many :join_events
    
end
