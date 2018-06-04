class Pet < ApplicationRecord
  belongs_to :group
  belongs_to :specie
end
