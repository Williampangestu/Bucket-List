get '/users/:id' do
  @user = User.find(params[:id])
  @goal = Goal.all.sort {|a,b| a.id <=> b.id}
  erb :home
end

get '/users/:id/profile' do
  @user = User.find(params[:id])
  erb :profile
end