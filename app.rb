require 'sinatra'
require 'oauth2'
require 'json'
require 'date'

enable :sessions

def client
  OAuth2::Client.new(
    ENV['MOVES_CLIENT_ID'],
    ENV['MOVES_CLIENT_SECRET'],
    :site => 'https://api.moves-app.com',
    :authorize_url => 'moves://app/authorize',
    :token_url => 'https://api.moves-app.com/oauth/v1/access_token'
  )
end