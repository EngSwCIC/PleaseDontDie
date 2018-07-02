class Duty < ApplicationRecord
  belongs_to :pet
  belongs_to :need, optional: true

  after_save :dup_duty

  def dup_duty
    if self.done == true
      byebug
      new_duty = self.dup
      new_duty.save
    end
  end
end
