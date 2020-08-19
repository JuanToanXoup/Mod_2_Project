class Post < ApplicationRecord
    belongs_to  :user
    belongs_to  :trail
    has_many    :post_comments
    has_many    :users,     through:    :post_comments
    has_many    :post_likes

    def self.upcoming_post
        self.select{|p| p.meetup_date > DateTime.now}
    end

    def self.past_post
        self.select{|p| p.meetup_date < DateTime.now}
    end
end
