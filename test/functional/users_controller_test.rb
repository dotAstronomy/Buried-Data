require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  context "UsersController" do
    setup do
      @controller = UsersController.new
      @request    = ActionController::TestRequest.new
      @response   = ActionController::TestResponse.new   
    end
    
    context "When accessing signup url" do
      setup do
        get :new
      end

      should render_template :new
      should respond_with :success
    end   
    
    context "When accessing edit but not logged in" do
      setup do
        get :edit
      end

      should respond_with :redirect
      # should set_the_flash "You must be logged in to view that page"
    end
    
    context "When accessing edit and logged in" do
      setup do
        @user = Factory :standard_user
        @controller.stubs(:logged_in?).returns(@user)
        @controller.stubs(:current_user).returns(@user)
        
        get :edit
      end

      should respond_with :success
      should render_template :edit
    end
    
    context "When accessing profile and not logged in" do
      setup do
        get :profile
      end

      should respond_with :redirect
      # should set_the_flash "You must be logged in to view that page"
    end
    
    context "When accessing profile and logged in" do
      setup do
        @user = Factory :standard_user
        @controller.stubs(:logged_in?).returns(@user)
        @controller.stubs(:current_user).returns(@user)
        
        get :profile
      end

      should respond_with :success
      should render_template :profile
    end
  end  
end
