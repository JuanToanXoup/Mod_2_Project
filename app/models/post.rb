class Post < ApplicationRecord
    belongs_to  :user
    belongs_to  :trail

    def self.upcoming_post
        self.select{|p| p.meetup_date > DateTime.now}
    end

    def self.past_post
        self.select{|p| p.meetup_date < DateTime.now}
    end
end
