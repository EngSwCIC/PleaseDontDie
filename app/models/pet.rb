class Pet < ApplicationRecord
  belongs_to :group
  belongs_to :specie, optional: true

  def sex
    sex_prettyp(self[:sex]) || self[:sex]
  end

  private

  def sex_prettyp(num)
    sex = {"1" => "male", "2" => "female"}
    sex[num]
  end

end
