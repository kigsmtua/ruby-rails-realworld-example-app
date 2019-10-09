require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "should not add user without the required fields" do
    user = User.new
    assert_not user.save
  end

end
