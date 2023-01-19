class AddCoverUrlToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :cover_url, :string
  end
end
