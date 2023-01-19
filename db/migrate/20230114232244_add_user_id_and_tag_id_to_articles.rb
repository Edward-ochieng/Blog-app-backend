class AddUserIdAndTagIdToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :user_id, :integer
    add_column :articles, :tag_id, :integer
  end
end
