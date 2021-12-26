class Dish < ApplicationRecord

  belongs_to :store
  has_many :open_date
end
