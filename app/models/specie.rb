class Specie < ApplicationRecord
  has_many :needs

  validates :name, 
    presence: true,
    length: { minimum: 2 }

end
