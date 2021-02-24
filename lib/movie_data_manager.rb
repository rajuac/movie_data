require 'httparty'

class MovieDataManager 

    
    def latest_movies 
      response = HTTParty.get('http://omdbapi.com/?s=2020&y=2020&apikey=beb23e0a&i')
      response["Search"]
    end

    def details(id) 
        mid = id.to_i
        response = HTTParty.get("http://omdbapi.com/?i="+id+"&y=2020&apikey=beb23e0a&i")
    end
end