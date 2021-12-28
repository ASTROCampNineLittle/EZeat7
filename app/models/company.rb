class Company < ApplicationRecord


  has_many :stores

  validates :name, :address, :tele, :manager_name, presence: true 

end
