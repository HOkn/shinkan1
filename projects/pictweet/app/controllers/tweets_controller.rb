class TweetsController < ApplicationController

  before_action:redirect, except: :index

  def index
    @tweets = Tweet.all.order('created_at DESC').page(params[:page]).per(5)
  end

  def new
  end


  def create
    Tweet.create(create_params)
    # Tweet.create(name: params[:name], image: params[:image], text: params[:text])
    # binding.pry
  end

   private
   def create_params
    params.permit(:name, :image, :text)
  end


  def redirect
      redirect_to:action => "index" unless user_signed_in?
  end

end
