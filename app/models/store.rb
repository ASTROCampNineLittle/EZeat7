class Store < ApplicationRecord
  has_many :projects
  belongs_to :company
end
