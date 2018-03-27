class ArticlesController < ApplicationController
  def index
    response = Unirest.get("https://newsapi.org/v2/top-headlines?country=de&category=business&apiKey=b4a69789b6cf41128d999af0122111b4")
    render json: response.body
  end
end
