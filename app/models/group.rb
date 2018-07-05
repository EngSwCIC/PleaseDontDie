class Group < ApplicationRecord
  has_many :pets
  has_and_belongs_to_many :profile_users
  has_one_attached :picture

  validates :name,
    presence: true,
    uniqueness: true,
    length: { minimum: 2 }

  def group_expo
    self.image.variant(resize: '300x300')
  end

end
