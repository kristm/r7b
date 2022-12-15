require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "should save without errors" do
    article = Article.new
    article.title = "Book 1"
    article.author = "Ms Pots"
    assert article.save, "Save successful"

    article2 = articles(:one)
    assert article2, "wala lang"
  end

  test "should get [DRAFT] prefix" do
    article = Article.new
    article.title = "Book 1"
    article.send(:set_title_to_draft)
    assert_match article.title, "[DRAFT] Book 1"
  end
end
