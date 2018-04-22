
class SuggestionsController < ApplicationController
  def index
    # require 'httparty'
    user = "garden"
    url = "http://api.walmartlabs.com/v1/search?query=#{user}&format=json&apiKey=4ev5epchtbuy49e3w7b3up5d"
    response = HTTParty.get(url).to_h
    @items = response["items"]
  end

  def show
    user = "garden"
    url = "http://api.walmartlabs.com/v1/search?query=#{user}&format=json&apiKey=4ev5epchtbuy49e3w7b3up5d"
    response = HTTParty.get(url).to_h
    @items = response["items"]
  end

  def home
  end
end

#submit turns choices into params
#
