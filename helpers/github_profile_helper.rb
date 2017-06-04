require 'octokit'

module GithubProfileHelper

  def get_user_repos(user)
    client = Octokit::Client.new(:client_id => ENV['GITHUB_CLIENT_ID'], :client_secret => ENV['GITHUB_CLIENT_SECRET'])
    client.repos(user)
  end

  def order_repos_by_size(user)
    repos = get_user_repos(user)
    repos.sort_by { |k| k['size'] }.pop(5)
  end

  def largest_repos(user)
    begin
      largest_repos = order_repos_by_size(user)
      if largest_repos.nil?
        return "Sorry, we couldn't find any repos for this user"
      else
        return largest_repos.map(&:to_h)
      end
    rescue Octokit::NotFound
      return "Sorry, we couldn't find the user you requested"
    end
  end

end
