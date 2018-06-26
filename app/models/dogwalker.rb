class Dogwalker < ApplicationRecord
  belongs_to :user
  has_many :dogs, through: :walks
end
