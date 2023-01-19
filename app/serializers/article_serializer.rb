class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :cover_url, :description
  belongs_to  :user

  def image_url
    object.image.url
  end

end
