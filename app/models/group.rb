class Group < ApplicationRecord
  has_many :users
  has_many :pets

  validates :name,
    presence: true,
    uniqueness: true,
    length: { minimum: 2 }

end
