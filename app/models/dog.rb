class Dog < ApplicationRecord
  belongs_to :user
  has_many :walks

  mount_uploader :photo, PhotoUploader


end
