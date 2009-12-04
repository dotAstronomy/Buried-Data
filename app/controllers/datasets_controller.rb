class DatasetsController < ApplicationController
  
  before_filter :require_user, :only => [ :new, :create, :edit ]

  def index
    @datasets = Dataset.recent
    
    respond_to do |format|
      format.html
      format.xml { render :xml => @datasets.to_xml }
      format.json { render :json => @datasets.to_json }
    end
  end
  
  def show
    @dataset = Dataset.find(params[:id])
    
    respond_to do |format|
      format.html
      format.xml { render :xml => @dataset.to_xml }
      format.json { render :json => @dataset.to_json }
    end
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
    @dataset = Dataset.find(params[:id])
    
    respond_to do |format|
      format.html
      format.xml { render :xml => @dataset.to_xml }
      format.json { render :json => @dataset.to_json }
    end
  end

end
