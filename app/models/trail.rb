class Trail < ApplicationRecord
    has_many    :rides
    has_many    :trail_comments
    has_many    :posts
    has_many    :trail_likes
    
    has_many    :users, through: :rides
    has_many    :users, through: :trail_comments
    has_many    :users, through: :posts
    has_many    :users, through: :trail_likes
    
    has_one_attached :trail_pic

    validates :name, :location, :duration, :length, :difficulty, :trail_type, presence: true

end
