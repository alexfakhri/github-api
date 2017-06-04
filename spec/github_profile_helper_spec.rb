require_relative './spec_helper'
require_relative '../helpers/github_profile_helper'

  describe GithubProfileHelper do

    include GithubProfileHelper

    it 'can return an array with the users repositories' do
      user = 'alexfakhri'
      expect(get_user_repos(user)).to be_an_instance_of(Array)
    end

    it 'can order the repos by size and return 5 of the largest' do
      user = 'alexfakhri'
      user_repos = largest_repos(user)
      expect(user_repos).to be_an_instance_of(Array)
      expect(user_repos.size).to eq 5
    end

    it 'returns a hash of the 5 largest repos' do
      user = 'alexfakhri'
      user_repos = largest_repos(user)
      expect(user_repos).to be_an_instance_of(Array)
      expect(user_repos.size).to eq 5
    end

    it 'returns and error if the user does not exists' do
      user = 'ausernamethatdoesntexists'
      expect(largest_repos(user)).to eq "Sorry, we couldn't find the user you requested"
    end

  end
