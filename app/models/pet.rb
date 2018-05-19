class Pet < ApplicationRecord
  belongs_to :specie
  belongs_to :group
end
