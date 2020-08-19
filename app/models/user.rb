class User < ApplicationRecord
    has_secure_password

    has_many    :bikes
    has_many    :bike_comments
    has_many    :bike_likes
    has_many    :posts
    has_many    :post_comments
    has_many    :post_likes
    has_many    :rides
    has_many    :trail_comments
    has_many    :trail_likes

    has_many    :trails, through: :rides
    has_many    :trails, through: :trail_comments
    has_many    :trails, through: :trail_likes
    has_many    :trails, through: :posts

    has_one_attached :avatar

    validates :name, :username, :age, presence: true
    validates :username, uniqueness: true
end
