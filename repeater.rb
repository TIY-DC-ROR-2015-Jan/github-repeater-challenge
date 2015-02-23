require 'sinatra/base'

# For now, this is just a simple repeater of the Github API
# Making a GET request to `/users/:username` should show the
#   public Github repositories for that user
# Your calls to Github don't need to be authenticated, but it
#   would be a nice bonus to add a mechanism to do so


print "Please enter your GitHub token >"
token = gets.chomp


class GithubRepeater < Sinatra::Base

  # def initialize (token)
  #   @auth = token
  #   @header = {"Authorization" => "token #{@auth}", "User-Agent" => "kwals"}
  # end
  
  get 'https://api.github.com/users/:username'
    a = params[:username]
    a.to_json
end

GithubRepeater.run!
