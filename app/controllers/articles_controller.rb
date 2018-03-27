class ArticlesController < ApplicationController
  def index
    response = Unirest.get("https://newsapi.org/v2/top-headlines?country=de&category=business&apiKey=#{ENV['API_KEY']}")
    render json: response.body
  end
end
