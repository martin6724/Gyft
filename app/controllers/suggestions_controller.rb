
class SuggestionsController < ApplicationController
  def index
    # require 'httparty'

    user = params[:items][:age] + " + " + params[:items][:activities] + " + " + params[:items][:style]
    url = "http://api.walmartlabs.com/v1/search?query=#{user}&format=json&apiKey=4ev5epchtbuy49e3w7b3up5d"
    response = HTTParty.get(url).to_h
    @items = response["items"]
  end

  def show
    id = params[:id]
    url = "http://api.walmartlabs.com/v1/items?ids=#{id}&format=json&apiKey=4ev5epchtbuy49e3w7b3up5d"
    response = HTTParty.get(url).to_h
    @items = response["items"]
  end

  def home
  end
end
