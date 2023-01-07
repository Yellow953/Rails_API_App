class ResultController < ApplicationController
  def index
    @results = Result.last(10).reverse
    render json: {
      results: @results,
      status: 200
    }  
  end

  def create
    result = Result.new(key: params[:key], name: params[:name], text: params[:text], category: params[:category], minimum: params[:minimum], maximum: params[:maximum], average: params[:average])
    
    if result.save!
      render json: "success" 
    else 
      render json: "error"
    end
  end
end
