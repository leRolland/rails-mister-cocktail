class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: true, allow_blank: false
  validates :name, uniqueness: true
end
