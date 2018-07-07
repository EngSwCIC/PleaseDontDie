class Need < ApplicationRecord
  belongs_to :specie, optional: true

  validates :name,
    presence: true,
    length: { minimum: 2 }
end
