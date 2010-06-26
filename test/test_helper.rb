ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'rails/test_help'
require 'shoulda'
require 'factory_girl_rails'
require 'webrat'

Factory.definition_file_paths = [ File.join(Rails.root, 'test', 'factories') ]
Factory.find_definitions

class ActiveSupport::TestCase
  
  def self.should_have_attached_file(attachment)
    klass = self.name.gsub(/Test$/, '').constantize

    context "To support a paperclip attachment named #{attachment}, #{klass}" do
      should_have_db_column("#{attachment}_file_name",    :type => :string)
      should_have_db_column("#{attachment}_content_type", :type => :string)
      should_have_db_column("#{attachment}_file_size",    :type => :integer)
    end

    should "have a paperclip attachment named ##{attachment}" do
      assert klass.new.respond_to?(attachment.to_sym), 
             "@#{klass.name.underscore} doesn't have a paperclip field named #{attachment}"
      assert_equal Paperclip::Attachment, klass.new.send(attachment.to_sym).class
    end
  end
  
  def api_login
    @request.env['HTTPS'] = 'on'
    @request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(SiteConfig.api_username, SiteConfig.api_password)
  end
  
  def admin_cas_login
    @user = Factory :admin_user
    @request.session[:cas_user] = @user.name
    @request.session[:cas_extra_attributes] = {}
    @request.session[:cas_extra_attributes]['id'] = @user.id
    @request.session[:cas_extra_attributes]['api_key'] = @user.api_key
    CASClient::Frameworks::Rails::Filter.stubs(:filter).returns(true)
  end
  
  def standard_cas_login
    @user = Factory :zooniverse_user
    @request.session[:cas_user] = @user.name
    @request.session[:cas_extra_attributes] = {}
    @request.session[:cas_extra_attributes]['id'] = @user.id
    @request.session[:cas_extra_attributes]['api_key'] = @user.api_key
    CASClient::Frameworks::Rails::Filter.stubs(:filter).returns(true)
  end
  
  def clear_workflow_session
    @request.session[:current_workflow_id] = nil
    @request.session[:current_workflow_task_id] = nil
    @request.session[:current_asset_ids] = nil
    @request.session[:current_asset_locations] = nil
    @request.session[:result] = nil
    @request.session[:started] = nil
  end
    
  # Transactional fixtures accelerate your tests by wrapping each test method
  # in a transaction that's rolled back on completion.  This ensures that the
  # test database remains unchanged so your fixtures don't have to be reloaded
  # between every test method.  Fewer database queries means faster tests.
  #
  # Read Mike Clark's excellent walkthrough at
  #   http://clarkware.com/cgi/blosxom/2005/10/24#Rails10FastTesting
  #
  # Every Active Record database supports transactions except MyISAM tables
  # in MySQL.  Turn off transactional fixtures in this case; however, if you
  # don't care one way or the other, switching from MyISAM to InnoDB tables
  # is recommended.
  #
  # The only drawback to using transactional fixtures is when you actually 
  # need to test transactions.  Since your test is bracketed by a transaction,
  # any transactions started in your code will be automatically rolled back.
  self.use_transactional_fixtures = true

  # Instantiated fixtures are slow, but give you @david where otherwise you
  # would need people(:david).  If you don't want to migrate your existing
  # test cases which use the @david style and don't mind the speed hit (each
  # instantiated fixtures translates to a database query per test method),
  # then set this back to true.
  self.use_instantiated_fixtures  = false

  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all
  
  # Add more helper methods to be used by all tests here...
end