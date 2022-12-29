class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :secondname, :username, :email_address, :avatar_url

  def avatar_url
    object.avatar.url
  end

end
