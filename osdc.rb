# require 'bundler/setup'
# require 'sinatra/base'
# require 'sass'
# require 'haml'
# require 'pry'
require 'sinatra'

class Osdc < Sinatra::Base


  get '/' do
    haml :index
  end

  get '/rules' do
    haml :rules
  end

  get '/submit' do
    haml :submit
  end

  get '/thanks' do
    haml :thanks
  end

  get '*/css/:name.css' do
    content_type 'text/css', :charset => 'utf-8'
    scss(:"/css/#{params[:name]}")
  end

  # post '/submit_mail_representative' do
  #   begin
  #     RestClient.post "https://api:key-6kgjogho9zhv8bjp54ig85gh3cwkz300"\
  #     "@api.mailgun.net/v2/htmtrade.sk/messages",
  #     :from => "#{params['mail'].match(/^[^@]*/i).to_s} <#{params['mail']}>",
  #     :to => "htmtrade1@gmail.com",
  #     :subject => "#{params['subject']}",
  #     :text => "#{params['description']}"

  #   rescue => e
  #     puts "ERROR: Mail not sent, because of: #{e.message}"
  #   end
  #   redirect '/contact'
  # end

end
