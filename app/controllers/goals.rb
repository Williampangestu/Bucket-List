post '/goals/:id/likes' do
  goal = Goal.find(params[:id])
  goal.update(likes: goal.likes + 1)
  content_type :json
  {likes: goal.likes}.to_json
end

post '/goals/:id/participants' do
  goal = Goal.find(params[:id])
  goal.users.count += 1
  p goal.users.count
  content_type :json
  {participants: goal.users.count}.to_json
end
