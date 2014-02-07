post '/sessions' do
  # sign-in

  user = User.authenticate(params[:email], params[:password])
  if user
    # successfully authenticated; set up session and redirect
    session[:user_id] = user.id
    redirect '/profile'
  else
    # an error occurred, re-render the sign-in form, displaying an error
    @error = "Invalid email or password."
    erb :index
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
