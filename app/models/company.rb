class Company < ApplicationRecord


  has_many :stores

  validates :name, :address, :tele,:manager_name, uniqueness: true, presence: true 
  validates :email, uniqueness: true, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "請填入正確email格式"}

end
