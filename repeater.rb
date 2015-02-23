require 'sinatra/base'
require 'httparty'
require 'pry'

# For now, this is just a simple repeater of the Github API
# Making a GET request to `/users/:username` should show the
#   public Github repositories for that user
# Your calls to Github don't need to be authenticated, but it
#   would be a nice bonus to add a mechanism to do so
class GithubRepeater < Sinatra::Base
	set :bind, '0.0.0.0'
	
# 	@headers = {
#       "Authorization" => "token #{TOKEN}",
#       "User-Agent"    => "Mozilla"
#     }
	
	get '/users/:username' do
		usr = params[:username]
		HTTParty.get("https://api.github.com/repos/#{usr}/#{repo}/stats/contributors"

		# binding.pry
	end
	
	###########################
# 	class Github
# 	include HTTParty # its a module, not a class to subclass
# 	base_uri = "https://api.github.com"
# 	attr_accessor :headers
# 	def initialize
# 		@headers = {
#       "Authorization" => "token #{TOKEN}",
#       "User-Agent"    => "Mozilla"
#     }
#     
# 	end
# 	
# 	def get_member_list
# 		HTTParty.get("https://api.github.com/orgs/TIY-DC-ROR-2015-Jan/members", headers: @headers)
# 	end
# 	
# 	def get_member_repos url
# 		HTTParty.get(url, headers: @headers)
# 	end
# 	
# 	def get_contributors url
# 		HTTParty.get(url, headers: @headers)
# 	end
# 	
# 	def get_repo_info usr, repo
# 		HTTParty.get("https://api.github.com/repos/#{usr}/#{repo}/stats/contributors", headers: @headers)
# 	end
	###########################
	
	
end

GithubRepeater.run!
