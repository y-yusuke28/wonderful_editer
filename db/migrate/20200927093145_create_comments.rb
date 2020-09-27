class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments, &:timestamps
  end
end
