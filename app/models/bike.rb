class Bike < ApplicationRecord
    belongs_to  :user
    has_many    :bike_comments
    has_many    :bike_likes
end
