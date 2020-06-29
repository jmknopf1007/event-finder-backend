class UserSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :username, :prof_picture, :bio
end
