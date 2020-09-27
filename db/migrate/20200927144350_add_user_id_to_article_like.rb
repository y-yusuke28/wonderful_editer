class AddUserIdToArticleLike < ActiveRecord::Migration[6.0]
  def change
    add_reference :article_likes, :user, foreign_key: true
    add_reference :article_likes, :article, foreign_key: true
  end
end
