class HomeController < ApplicationController
  def index
    @datasets = Dataset.recent
  end
  
  def about
    
  end
  
  def contact_us
    
  end
end
