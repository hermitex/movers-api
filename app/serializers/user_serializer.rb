class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :phone, :email, :account_type, :type, :password_digest, :avatar_url
  has_one :location
end
