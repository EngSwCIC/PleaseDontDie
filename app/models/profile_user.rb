class ProfileUser < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :groups
  has_one_attached :picture
end
