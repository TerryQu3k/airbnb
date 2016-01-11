post '/signup' do
	# password = params[:user][:password]
	user = User.new(name: params[:name], password: params[:password])
	user.save
	redirect to ('/')
end


post '/login' do

    user = User.find_by_name(params[:user][:name])

	if user.authenticate(params[:user][:password])
		session[:user_id] = user.id
		redirect to ("/user/#{user.id}")
	else
		redirect to ('/')
	end
end

get '/logout' do
	session[:user_id] = nil
	redirect to ('/')
end

get '/user/:user_id' do
	@user = User.find(session[:user_id])
	erb :'user/view'
end

# put '/user/:id/edit' do
# 	@user = User.find(session[:user_id])
# 	@user.update
# 	erb :'/user/edit'
# end


