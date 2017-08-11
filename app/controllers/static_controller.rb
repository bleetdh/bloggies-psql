class StaticController < ApplicationController
  before_action :authenticate_user!,
                only: [:about]
  def home
  #   response = HTTParty.post "https://andruxnet-random-famous-quotes.p.mashape.com/?cat=movies&count=10",
  # headers:{
  #   "X-Mashape-Key" => "mgl7sUmm66mshQJcomgAOWCDDj93p19i5kHjsnEWnpW8jWcUtM",
  #   "Content-Type" => "application/x-www-form-urlencoded",
  #   "Accept" => "application/json"
  # }
  #
  #   @random_quotes = response.body
  #   # render json: @random_quotes
  end

  def about
  end
end
