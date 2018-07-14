  class Chat < ApplicationRecord
  belongs_to :sender, foreign_key: :sender_id, class_name: 'User'
  belongs_to :recipient, foreign_key: :recipient_id, class_name: 'User'

  has_many :messages, dependent: :destroy

  validates_uniqueness_of :sender_id, scope: :recipient_id

  scope :involving, -> (user) {
    where("chats.sender_id = ? OR chats.recipient_id = ?", user.id, user.id)
  }

  scope :between, -> (user_A, user_B) {
    where("(chats.sender_id = ? AND chats.recipient_id = ?) OR (chats.sender_id = ? AND chats.recipient_id = ?)", user_A, user_B, user_B, user_A)
  }

  # The scopes will allow us to call Chat.involving(current_user) to find the chats where the current_user is participating
  # and Chat.between(current_user, another_user) to find the chats between these two users.


  # Due to our validates_uniqueness_of there will only be one chat between any two users,
  #  but the between scope will still return an ActiveRecordCollection [array like object].
end
