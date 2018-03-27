require 'unirest'
response = Unirest.get("localhost:3000/articles")
p response.body
