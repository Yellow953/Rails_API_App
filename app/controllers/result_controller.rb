class ResultController < ApplicationController
  def index
    @results = Result.last(10)
    render json: {
      results: @results
    }  
  end

  def save
    result = Result.new(key: params[:key], name: params[:name], text: params[:text], category: params[:category], minimum: params[:minimum], maximum: params[:maximum], average: params[:average])
    
    if result.save!
      render json: "success"
    else 
      render json: "error"
    end
  end
end
