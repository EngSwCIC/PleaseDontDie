class Group < ApplicationRecord
  has_many :profile_users
  has_many :pets

  validates :name,
    presence: true,
    uniqueness: true,
    length: { minimum: 2 }

end
