
get '/profile' do

  erb :profile
end

post '/profile' do
  # sign-up
  @user = User.new(name: params[:name], email: params[:email], password: params[:password])
  if @user.save
    # successfully created new account; set up the session and redirect
    session[:user_id] = @user.id
    redirect '/profile'
  else
    # an error occurred, re-render the sign-up form, displaying errors
    @error = "User already exists with that email! Sucka. "
    erb :index
  end
end
