require 'sinatra/base'
require 'httparty'
# For now, this is just a simple repeater of the Github API
# Making a GET request to `/users/:username` should show the
#   public Github repositories for that user
# Your calls to Github don't need to be authenticated, but it
#   would be a nice bonus to add a mechanism to do so

def prompt_for_token
  print "Enter your github token: "
  gets.chomp
end

def find_repos username
  token = prompt_for_token
  repos = HTTParty.get("https://api.github.com/users/#{username}/repos", headers: {"Authorization" => "token #{token}"})
  user_repos = repos.map {|x| x["name"]}
  user_repos
end


class GithubRepeater < Sinatra::Base
  
  get "/users/:username" do
    find_repos params[:username]
  end

end



GithubRepeater.run!
