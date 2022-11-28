require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "should save without errors" do
    article = Article.new
    article.title = "Book 1"
    article.author = "Ms Pots"
    assert article.save, "Save successful"
  end
end
