post '/users/:user_id/goals/:id/likes' do
  goal = Goal.find(params[:id])
  goal.update(likes: goal.likes + 1)
  content_type :json
  {likes: goal.likes}.to_json
end

post '/users/:user_id/goals/:id/participants' do
  goal = Goal.find(params[:id])
  user = User.find(params[:user_id])
  goal.users << user
  content_type :json
  {participants: goal.users.count}.to_json
end

get '/users/:user_id/goals/completes' do
  @user = User.find(params[:user_id])
  erb :_complete_form, layout: false
end

get '/users/:user_id/goals/:id' do
  @user = User.find(params[:user_id])
  @goal = Goal.find(params[:id])
  erb :goal
end

get '/users/:user_id/newgoal' do
  @user = User.find(params[:user_id])
  erb :_new_form, locals: {user: @user}
end

post '/users/:user_id/goals/new' do
  title = params[:title]
  content_type :json
  {title: title}.to_json
end