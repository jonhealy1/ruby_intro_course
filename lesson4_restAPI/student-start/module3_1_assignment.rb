require 'httparty'

# 2ccda5a7c27215fd627d6e7bad3099e759a4c4bf119fa5359c4dc15bfc0b92b6
# https://min-api.cryptocompare.com/data/pricemulti?fsyms=ETH,DASH&tsyms=BTC,USD,EUR&api_key=2ccda5a7c27215fd627d6e7bad3099e759a4c4bf119fa5359c4dc15bfc0b92b6

# https://api.spoonacular.com/recipes/random/?apiKey=365da87c4816413eb9c392ad9520cfd6

class Recipe

    #base_uri 'https://api.spoonacular.com/recipes/search'

    include HTTParty

    base_uri "https://api.spoonacular.com"
    # default_params key: ENV["365da87c4816413eb9c392ad9520cfd6"]
    # format :json

    # def self.for (keyword)
    #     #strang = ("/recipes/", query: {q: keyword})["similar"]
    #     get("/recipes/", query: {q: keyword})["similar"]
    #     #print strang
    # end

    def posts (keyword)
        a = "/recipes/"
        c = "/similar?apiKey=365da87c4816413eb9c392ad9520cfd6"
        searchy = a + keyword + c
        self.class.get(searchy)
    end
    
end
