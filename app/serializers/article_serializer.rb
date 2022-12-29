class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :user_id, :tag_id, :image_url, :tag, :user, :reviews

  def image_url
    object.image.url
  end

end
