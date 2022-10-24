class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :phone,:password_digest, :avatar_url, :account_type, :type, :location_id, :email
end
