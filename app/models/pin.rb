class Pin < ActiveRecord::Base
    belongs_to :user

    def editable_by?(user)
      user.is_admin? || self.user == user
    end  


end
