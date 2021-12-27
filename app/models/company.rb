class Company < ApplicationRecord


  has_many :stores

  validates :name, :address, :tele,:manager_name, uniqueness: true, presence: true 

end
