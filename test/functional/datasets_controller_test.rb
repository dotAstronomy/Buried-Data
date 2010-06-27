require 'test_helper'

class DatasetsControllerTest < ActionController::TestCase
  context "DatasetsController" do
    setup do
      @controller = DatasetsController.new
      @request    = ActionController::TestRequest.new
      @response   = ActionController::TestResponse.new   
    end
    
    context "#index not logged in" do
      setup do
        get :index
      end
    
      should respond_with :success
      should render_template :index
      should respond_with_content_type :html
    end
    
    context "#show not logged in" do
      setup do
        @dataset = Factory :public_dataset
        
        get :show, { :id => @dataset.id }
      end

      should respond_with :success
      should render_template :show
      should respond_with_content_type :html
    end
    
    context "#new not logged in" do
      setup do
        get :new
      end

      should respond_with :redirect
      # should set_the_flash "You must be logged in to view that page"
    end
    
    context "#edit not logged in" do
      setup do
        @dataset = Factory :public_dataset
        get :edit, { :id => @dataset.id }
      end

      should respond_with :redirect
      # should set_the_flash "You must be logged in to view that page"
    end
  end
end
