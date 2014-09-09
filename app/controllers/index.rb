get '/' do
  erb :index
end

get '/users' do
  erb :home
end

get '/users/profile' do
  erb :profile
end