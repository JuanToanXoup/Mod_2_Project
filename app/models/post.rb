class Post < ApplicationRecord
    belongs_to  :user
    belongs_to  :trail
    has_many    :post_comments
    has_many    :users,     through:    :post_comments
    has_many    :post_likes

    validates :user_id, :trail_id, :title, :description, :meetup_date, presence: true
    validate :post_date_after_current_date

    def post_date_after_current_date
        return if meetup_date.blank?
        if meetup_date < Time.now
          errors.add(:meetup_date, "Must be after the Current Time")
        end
    end

    def self.upcoming_post
        self.select{|p| p.meetup_date > DateTime.now}
    end

    def self.past_post
        self.select{|p| p.meetup_date < DateTime.now}
    end
end
