class Duty < ApplicationRecord
  belongs_to :pet
  belongs_to :need, optional: true

  after_save :dup_duty

  def dup_duty
    if self.frequency
      if self.done
        new_duty = self.dup
        new_duty.done = false
        new_duty.until = self.updated_at + self.frequency.hours
        new_duty.save
      end
    end
  end
end
