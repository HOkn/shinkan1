class TestController < ApplicationController

  def test
    name = params[:name]
    image = params[:image]
    text = params[:text]
  end
end