require 'sinatra/base'
require 'httparty'
require 'pry'



class GithubRepeater < Sinatra::Base
	set :bind, '0.0.0.0'
	TOKEN = ""
	@headers = {
		"Authorization" => "token #{TOKEN}",
		"User-Agent"    => "Mozilla"
	}
	
	post '/users/:username' do
    # @repos = get_repos params[:username]
		@repos = HTTParty.get("https://api.github.com/users/#{params[:username]}/repos")
    erb :repo_list2
    
    # content_type :json
    # @repos.to_json

		# binding.pry
	end
	
	get '/search' do
		"confirm"
		erb :repo_list
	end
end

GithubRepeater.run!
