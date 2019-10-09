require 'test_helper'

# Seems like active record tests the feature support for all frameworks and \
# Uses them to aactually generate works for the applicationn
class ArticleTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
end
