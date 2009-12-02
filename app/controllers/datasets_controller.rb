class DatasetsController < ApplicationController
  
  def index
    @datasets = Dataset.recent
  end
  
  def show
    @dataset = Dataset.find(params[:id])
  end
  
  def new
    @dataset= Dataset.new
    @share_policies = SharePolicy.find(:all)
    @dataset.attachables.build
    
  end
  
  def create
    @dataset = Dataset.new(params[:dataset])
    
    if @dataset.save
      flash[:notice] = "Dataset created"
      redirect_to :action => "show", :id => @dataset.id
    else
      flash[:error] = "There were some problems"
      render :action => "new"
    end
  end
  
  def edit
    
  end

end
