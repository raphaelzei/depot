require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', :minimum => 4
    assert_select '#main .entry', 3
    assert_select 'h3', 'MyString'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

  test "should has at the least 3 itens on the main page" do
    get :index
    assert_select '#main' do |elements|
      elements.each do |element|
        assert_select element, '.entry', 3
      end
    end
  end

end

