get '/users/:id' do
  @user = User.find(params[:id])
  @goal = Goal.all.sort {|a,b| a.id <=> b.id}
  erb :home
end

get '/users/:id/profile' do
  @user = User.find(params[:id])
  erb :profile
end

get '/users/:id/followers' do
  @user = User.find(params[:id])
  erb :_followers, locals: {user: @user}
end

get '/users/:id/followings' do
  @user = User.find(params[:id])
  erb :_followings, locals: {user: @user}
end

get '/users/:id/followers/delete' do
  @user = User.find(params[:id])
end

get '/users/:id/followings/delete' do
  @user = User.find(params[:id])
end