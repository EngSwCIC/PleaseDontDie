class Duty < ApplicationRecord
  belongs_to :pet
  belongs_to :need, optional: true
end
