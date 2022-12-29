class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :article_id, :user_id, :user
end
