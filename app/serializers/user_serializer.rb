class UserSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :username, :prof_picture, :bio, :password_digest
end
