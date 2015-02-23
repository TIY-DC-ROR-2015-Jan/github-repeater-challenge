require 'sinatra/base'
require 'httparty'
require 'pry'
# For now, this is just a simple repeater of the Github API
# Making a GET request to `/users/:username` should show the
#   public Github repositories for that user
# Your calls to Github don't need to be authenticated, but it
#   would be a nice bonus to add a mechanism to do so
class GithubRepeater < Sinatra::Base
include HTTParty

base_uri = 'https://api.github.com/'

get "/users/:username" do 
  binding.pry
  user = params["username"]
  # HTTParty.get "#{base_uri}/users/#{user}/repos"
end



end

GithubRepeater.run!
