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
    
      should_respond_with :success
      should_render_template :index
      should_respond_with_content_type :html
    end
    
    context "#show not logged in" do
      setup do
        @dataset = Factory :public_dataset
        
        get :show, { :id => @dataset.id }
      end

      should_respond_with :success
      should_render_template :show
      should_respond_with_content_type :html
    end
    
    context "#new not logged in" do
      setup do
        get :new
      end

      should_respond_with :redirect
      should_set_the_flash_to "You must be logged in to view that page"
    end
    
    context "#edit not logged in" do
      setup do
        @dataset = Factory :public_dataset
        get :edit, { :id => @dataset.id }
      end

      should_respond_with :redirect
      should_set_the_flash_to "You must be logged in to view that page"
    end
  end
end
