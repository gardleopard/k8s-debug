require 'sinatra'
require 'json'
set :bind, '0.0.0.0'

get '/' do
  content_type :json
  response.headers["CUSTOM_HEADER_ONE"] = "HEADER_ONE"
  response.headers["CUSTOM_HEADER_TWO"] = "HEADER_TWO"
  request.env.to_json
end

get '/health' do
  'OK'
end

