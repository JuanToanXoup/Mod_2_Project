class Friend < ApplicationRecord
    belongs_to :followed, class_name: "User", foreign_key: :followed_id
    belongs_to :follower, class_name: "User", foreign_key: :follower_id

    validate :follower_does_not_equal_followed

    def follower_does_not_equal_followed
      @errors.add(:follower, "should not be the same as the followed") if self.follower_id == self.followed_id
    end
  end