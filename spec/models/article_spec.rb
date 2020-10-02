# == Schema Information
#
# Table name: articles
#
#  id         :bigint           not null, primary key
#  body       :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_articles_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "rails_helper"

RSpec.describe Article, type: :model do
  context "条件を満たした時" do
    let(:article) {build(:article)}
    it "投稿できる" do
      expect(article).to be_valid
    end
  end

  context "タイトルが入力されていない時" do
    let(:article) {build(:article, title: nil)}
    it "投稿に失敗する" do
      expect(article).not_to be_valid
    end
  end
end
