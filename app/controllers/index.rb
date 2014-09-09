get '/' do
  erb :index
end

#sign in
post '/sessions' do
  if user = User.find_by_email(params[:email])
    user.password == params[:password]
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    redirect '/'
  end
end

#sign up
post '/users' do
  user = User.create(username: params[:name], email: params[:email], password: params[:password])
  sign_in(user.id)
  redirect "/users/#{user.id}"
end

#sign out
post '/users/:id/delete' do
  sign_out
  redirect '/'
end
