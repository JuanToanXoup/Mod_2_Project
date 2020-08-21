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

    has_many :active_relationships, class_name: "Friend", foreign_key: :follower_id, dependent: :destroy
    has_many :followeds, through: :active_relationships, source: :followed
    has_many :passive_relationships, class_name: "Friend", foreign_key: :followed_id, dependent: :destroy
    has_many :followers, through: :passive_relationships, source: :follower

    has_one_attached :avatar

    validates :name, :username, :age, presence: true
    validates :username, uniqueness: true, format: { without: /\s/ ,message: "Username can not have a space."}
    validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 18 }
    
end
