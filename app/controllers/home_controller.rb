class HomeController < ApplicationController
  protect_from_forgery prepend: true
  
  def index
    @records = TimeRecord.all.reverse
  end
  
  def clock
    record = TimeRecord.new
    record.username = params[:username]
    record.clock_type = params[:clock_type]
    record.save
    redirect_back(fallback_location: '/')
  end
end
