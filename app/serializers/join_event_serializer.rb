class JoinEventSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :event_id
end
