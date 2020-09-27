class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles, &:timestamps
  end
end
