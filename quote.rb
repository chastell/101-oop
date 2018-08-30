require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'httparty'
end

require 'json'

server_raw_output = HTTParty.get('https://talaikis.com/api/quotes/random/').body
json = JSON.parse(server_raw_output)
print json['author']
print ': '
puts json['quote']
