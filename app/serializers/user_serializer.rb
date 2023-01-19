class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :secondname, :username, :email_address, :occupation, :description, :profile_photo, :articles

  # def avatar_url
  #   object.avatar.url
  # end
  has_many :articles
end
