require 'test_helper'

class UserAccountsTest < ActionController::IntegrationTest
  context "User Signup" do
    should "be successful with vaild credentials" do
      visit "/signup"
      fill_in "user[username]", :with => "monkey"
      fill_in "user[email]", :with => "i_am_am_stonker@gmail.com"
      fill_in "user[password]", :with => "monkey_password"
      fill_in "user[password_confirmation]", :with => "monkey_password"
      click_button
      assert_response :success
      assert_equal User.count, 1
    end
    
    should "fail with non-matching password credentials" do 
      visit "/signup"
      fill_in "user[username]", :with => "monkey"
      fill_in "user[email]", :with => "i_am_am_stonker@gmail.com"
      fill_in "user[password]", :with => "monkey_password"
      fill_in "user[password_confirmation]", :with => "monkey_faulty_password"
      click_button
      assert_response :success
      assert_equal User.count, 0
    end
    
    should "fail with non-unique email credentials" do 
      @user = Factory :standard_user, :email => "monkey@gmail.com"
      visit "/signup"
      fill_in "user[username]", :with => "monkey"
      fill_in "user[email]", :with => "monkey@gmail.com"
      fill_in "user[password]", :with => "monkey_password"
      fill_in "user[password_confirmation]", :with => "monkey_password"
      click_button
      assert_response :success
      assert_contain "Email has already been taken"
      assert_equal User.count, 1
    end
    
    should "fail with non-unique email credentials (case difference)" do 
      @user = Factory :standard_user, :email => "Monkey@Gmail.com"
      visit "/signup"
      fill_in "user[username]", :with => "monkey"
      fill_in "user[email]", :with => "monkey@gmail.com"
      fill_in "user[password]", :with => "monkey_password"
      fill_in "user[password_confirmation]", :with => "monkey_password"
      click_button
      assert_response :success
      assert_contain "Email has already been taken"
      assert_equal User.count, 1
    end
    
    should "fail with non-unique username credentials" do 
      @user = Factory :standard_user, :username => "monkey"
      visit "/signup"
      fill_in "user[username]", :with => "monkey"
      fill_in "user[email]", :with => "monkey@gmail.com"
      fill_in "user[password]", :with => "monkey_password"
      fill_in "user[password_confirmation]", :with => "monkey_password"
      click_button
      assert_response :success
      assert_contain "Username has already been taken"
      assert_equal User.count, 1
    end
    
    should "fail with non-unique username credentials (case difference)" do 
      @user = Factory :standard_user, :username => "monkey"
      visit "/signup"
      fill_in "user[username]", :with => "Monkey"
      fill_in "user[email]", :with => "monkey@gmail.com"
      fill_in "user[password]", :with => "monkey_password"
      fill_in "user[password_confirmation]", :with => "monkey_password"
      click_button
      assert_response :success
      assert_contain "Username has already been taken"
      assert_equal User.count, 1
    end
  end
end
