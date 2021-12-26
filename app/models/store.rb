class Store < ApplicationRecord
  has_many :dishes
  belongs_to :company

  validates :name, :food_type, :tel,:email, presence: true 
end
