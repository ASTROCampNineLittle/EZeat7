class Store < ApplicationRecord
  has_many :dishes
  belongs_to :company

  enum food_type: [:中式, :日式, :韓式, :印度, :義式, :英式, :美式, :法式, :德式, :墨西哥, :其它]

  # enum food_type: [:chinese, :japanese, :korean, :indian, :italian, :british, :american, :french, :german, :mexican, :others]

  validates :name, :food_type, :tel,:email, presence: true 
end
