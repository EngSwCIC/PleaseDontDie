class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :profile_user
  accepts_nested_attributes_for :profile_user
  validate :nested_attributes
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def nested_attributes
  	if nested_attributes_blank?
  		errors.add(:base, "É necessário preencher os campos")
  	end
  end

  def nested_attributes_blank?
  	profile_user.first_name.blank? || profile_user.last_name.blank?
  end	

end
