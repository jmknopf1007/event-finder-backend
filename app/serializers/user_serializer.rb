class UserSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :username, :bio, :password_digest
end
