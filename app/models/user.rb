class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :dogs
  has_many :walks

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :picture, PhotoUploader

  def full_name
    "#{firstname} #{lastname}"
  end

  def sender?(conversation)
    self == conversation.sender
  end

  def recipient?(conversation)
    self == conversation.recipient
  end
end
