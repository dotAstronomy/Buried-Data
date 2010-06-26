class UsersController < ApplicationController
  before_filter :require_user, :except => [:new, :create]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Registration successful."
      redirect_to :controller => :home
    else
      render :action => 'new'
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated profile."
      redirect_to :controller => :home
    else
      render :action => 'edit'
    end
  end
  
  def profile
    @user = current_user
  end
end
