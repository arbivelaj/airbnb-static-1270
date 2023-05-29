require "open-uri"

class FlatsController < ApplicationController
  before_action :set_flats, only: [:index, :show, :cheap]

  def index
  end

  def show
    id = params[:id].to_i
    @flat = @flats.find { |flat| flat["id"] == id }
  end

  def cheap
    @cheap_flats = @flats.select {|flat| flat['price'] < 100}
  end

  private

  def set_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.open(url).read)
  end
end
