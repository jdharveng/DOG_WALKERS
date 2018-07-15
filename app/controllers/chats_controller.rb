class ChatsController < ApplicationController
  before_action :authenticate_user!

  def index
    #@chats = Chat.involving(current_user)
    @chats = policy_scope(Chat).order(created_at: :desc)
  end

  def show
    @chat = Chat.find(params[:id])
    authorize @chat
    @other_user = current_user == @chat.sender ? @chat.recipient : @chat.sender
    @messages = @chat.messages.order(created_at: :asc).last(20)
    @message = Message.new
  end

  def create
    duo = params[:duo]
    sender_id = duo[:sender_id]
    recipient_id = duo[:recipient_id]
    @chat = Chat.between(sender_id, recipient_id).first

    if !@chat
      @chat = Chat.create!(sender_id: sender_id, recipient_id: recipient_id)
    end
   # @chat = Chat.between(sender_id, recipient_id).first_or_create!(sender_id, recipient_id)

    authorize @chat
    redirect_to @chat
  end

  private

  def chat_params
    params.permit(:duo, :sender_id, :recipient_id)
  end
end
