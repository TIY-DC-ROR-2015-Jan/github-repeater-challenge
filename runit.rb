require 'httparty'

url = "http://localhost:4567" # update this if needed

HTTParty.get "#{url}/users/DCLivingston"
