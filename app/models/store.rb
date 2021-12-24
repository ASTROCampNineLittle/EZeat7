class Store < ApplicationRecord
  has_many :projects
  belongs_to :company

  validates :name, :food_type, :tel,:email, presence: true 
end
