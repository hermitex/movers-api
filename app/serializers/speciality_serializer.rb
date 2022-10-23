class SpecialitySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :mover
end
