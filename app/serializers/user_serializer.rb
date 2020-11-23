class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :bio, :profile_img, :tasks
end
