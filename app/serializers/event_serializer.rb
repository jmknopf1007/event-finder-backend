class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture, :description, :address
end
