require 'pry'
require 'httparty'

class RepeaterWrapper
  TOKEN = File.read('./repeaterauth.txt')

  include HTTParty
  base_uri "api.github.com"
  headers "Authentication: #{TOKEN}"

  

  def get_user_repos(username)
    rs = RepeaterWrapper.get('/users/username')
    repos = {}
    repos[:username] = []
    x = rs["repos"]
    x.each do  |r|
      repos[:username] << r["name"]
    end
    return repos.to_json
  end

end

rw = RepeaterWrapper.new

rw.get_user_repos("mallorybucell")