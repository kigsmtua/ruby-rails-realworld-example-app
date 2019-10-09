require 'test_helper'


# This is what happens when such values need to come up along for usage
# Does this mean such values can d
class ArticleTest < ActiveSupport::TestCase
  test "article validates the presence of title" do
    article = Article.new(description: 'This is it', body:'christ', user:users(:one))
    assert_not article.save
  end

  test "article validates the presence of description" do
    article = Article.new(title: 'This is it', body:'christ', user:users(:one))
    assert_not article.save
  end

  test "article validates the presence of body " do
    article = Article.new(title:'The magic', description: 'This is it', user:users(:one))
    assert_not article.save # This just means we can
  end

  test "article requires user for creation" do
    article = Article.new(title:'The magic', description: 'This is it', body:'christ')
    assert_not article.save # This just means we can
  end

  test "test that a valid article is created" do
    article = Article.new(title:'The magic', description: 'This is it', body:'christ', user:users(:one))
    assert article.save # This just means we can
  end
end
