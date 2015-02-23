require 'sinatra/base'

# For now, this is just a simple repeater of the Github API
# Making a GET request to `/users/:username` should show the
#   public Github repositories for that user
# Your calls to Github don't need to be authenticated, but it
#   would be a nice bonus to add a mechanism to do so
class GithubRepeater < Sinatra::Base

  def repos username  
    # repos = GitHub.get()
  end

  get '/users/:username' do
    repos params[:username]
  end

end

GithubRepeater.run!


# curl -i -u "EmilyChu" https://api.github.com/users/EmilyChu
# curl -i -u "EmilyChu" https://api.github.com/users -d '{login: params["login"]}' 