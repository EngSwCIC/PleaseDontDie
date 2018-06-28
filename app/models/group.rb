class Group < ApplicationRecord
  has_many :pets
  has_and_belongs_to_many :profile_users

  validates :name,
    presence: true,
    uniqueness: true,
    length: { minimum: 2 }

end
