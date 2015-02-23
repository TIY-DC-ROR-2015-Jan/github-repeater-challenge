require 'sinatra/base'
require 'httparty'

# For now, this is just a simple repeater of the Github API
# Making a GET request to `/users/:username` should show the
#   public Github repositories for that user
# Your calls to Github don't need to be authenticated, but it
#   would be a nice bonus to add a mechanism to do so
class GithubRepeater < Sinatra::Base
  get '/users/:username' do
    redirect "https://github.com/#{username}/?tab=repositories"
    # "https://github.com/#{username}"
    # params[tab:"repositories"]
  end
end

GithubRepeater.run!
