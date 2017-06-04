GitHub API
========

A simple Sinatra API that uses the GitHub API to return a JSON response with a given users biggest repos.

Task
----

Your task is to write a HTTP API that, given a user's GitHub handle, retrieves the five largest public repositories owned by that user (the GitHub API has a "size" field that you can use). You should return the data as JSON.

Deploy your API behind a public facing URL so that we can test it. We would be keen to see the code and a brief description of how you deployed the API.

Technologies Used:
----
Built using:
* Ruby
* Sinatra
* RSpec
* RSpec Capybara
* Heroku


How to use:
----

Clone the repository:
```shell
$ git clone https://github.com/alexfakhri/github-api
```

Change into the directory:
```shell
$ cd github-api
```

Install gems:
```shell
$ bundle
```

To run tests:
```shell
$ rspec
```

To play a game:
```shell
$ bundle exec shotgun config.ru
```
Visit:
```shell
localhost:9393/ in the browser
```
