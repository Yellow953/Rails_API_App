class SubController < ApplicationController
  def index
    @subs = Sub.all
    render json: {
      subs: @subs,
      status: 200
    }  
  end

  def create
    sub = Sub.new(email: params[:email])
    
    if sub.save!
      render json: "success"
    else 
      render json: "error"
    end
  end
end
