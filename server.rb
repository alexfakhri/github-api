require 'sinatra/base'
require 'sinatra/json'

class GithubApi < Sinatra::Base

  require_relative './helpers/github_profile_helper'
  include GithubProfileHelper

  set :views, Proc.new { File.join(root, "views") }

  get '/' do
    erb :index
  end

  post '/github_handle' do
    user_name = params[:github_handle]
    redirect "/api/repos/#{user_name}"
  end

  get "/api/repos/:user_name" do
    json(largest_repos(params['user_name']))
  end


end
