require 'sinatra/base'
require "httparty"

# For now, this is just a simple repeater of the Github API
# Making a GET request to `/users/:username` should show the
#   public Github repositories for that user
# Your calls to Github don't need to be authenticated, but it
#   would be a nice bonus to add a mechanism to do so
# TOKEN = request.env["GITHUB_TOKEN"]

class GithubRepeater < Sinatra::Base
  url =  "https://api.github.com"
  username = "wonmanlee"

  get '/' do
    HTTParty.get("#{url}/users/#{username}").to_json
  end

end

GithubRepeater.run!

  # curl -i "#{url}/users/#{username}"
