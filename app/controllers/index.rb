get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/create' do

erb :creation
end

post '/create_survey' do

end


