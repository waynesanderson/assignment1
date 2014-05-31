require 'sinatra'
require 'rest-client'

  ENV['PORT'] ||= '4000'
  set :port, ENV['PORT']
  set :bind, '0.0.0.0'

  get '/' do
    erb :index
  end

post '/' do
  RestClient.post 'https://AC01983fd2966d4f4b28a2624b8b8abfa7:a4fd823e75768b238b222b5c19f545fa@api.twilio.com/2010-04-01/Accounts/AC01983fd2966d4f4b28a2624b8b8abfa7/SMS/Messages/', :From => '+18017846920', :To => "#{params["sms"]}", :Body => 'Hello, from u1234567'
  erb :thanks
  end

get '/italian' do
   "Ciao!"
 end

get '/read_more' do
   erb :read_more
 end
