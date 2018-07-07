class Pet < ApplicationRecord
  belongs_to :group
  belongs_to :specie, optional: true
  has_many :needs
  has_many :duties

  has_one_attached :image

  validates :name,
    presence: true,
    length: { minimum: 2 }

  def sex
    sex_prettyp(self[:sex]) || self[:sex]
  end

  private

  def sex_prettyp(num)
    sex = {"1" => "macho", "2" => "fêmea"}
    sex[num]
  end

end
