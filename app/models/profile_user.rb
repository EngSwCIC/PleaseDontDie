class ProfileUser < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :groups
  has_one_attached :picture
  has_many :pets, through: :groups
  has_many :duties, through: :pets
  has_many :profile_users, through: :groups

  validates :first_name,
	  presence: true,
	  length: { minimum: 2 }

  validates :last_name,
	  presence: true,
	  length: { minimum: 2 }


  def name
    "#{first_name} #{last_name}"
  end
end
