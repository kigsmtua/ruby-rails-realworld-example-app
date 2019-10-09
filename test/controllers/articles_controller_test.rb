require 'test_helper'

# Thia is my commandment that we love one ano
class ArticlesControllerTest < ActionDispatch::IntegrationTest
  describe "article creation testing " do

    it "All available articles are fetched and displayed" do
      get 'api/articles'
      assert_response :success
    end
  end
end
