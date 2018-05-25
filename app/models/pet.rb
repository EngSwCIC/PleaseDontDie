class Pet < ApplicationRecord
  belongs_to :group
  has_one :specie, foreign_key: 'specie_id'
end
