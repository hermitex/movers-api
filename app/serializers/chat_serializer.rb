class ChatSerializer < ActiveModel::Serializer
  attributes :id, :sender_id, :recipient_id, :content, :is_read
  has_one :user
end
