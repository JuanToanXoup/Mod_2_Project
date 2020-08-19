class Comment < ApplicationRecord
    
    belongs_to  :post
    belongs_to  :user
    
    
    has_many    :post_comments
    has_many    :posts, through:    :post_comments
    has_many    :users, through:    :post_comments

end
