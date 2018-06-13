class GroupsProfileUser < ApplicationRecord
  belongs_to :group
  belongs_to :profile_user
end
