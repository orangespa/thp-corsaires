require 'test_helper'

class CorsairTest < ActiveSupport::TestCase
  
  def setup
    @corsair = Corsair.new(first_name: "Example", age: 17)
  end

  test "should be valid" do 
    assert @corsair.valid?
  end

  test "first_name should be present" do
    @corsair.first_name = "     "
    assert_not @user.valid?
  end

  test "age should be present" do
    @corsair.age = "     "
    assert_not @user.valid?
  end

end
