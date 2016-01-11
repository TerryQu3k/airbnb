get '/property/new' do
	@user = User.find(session[:user_id])
	@property = @user.properties
	@user.save
	erb :'property/new'
end

post '/property/new' do
	property = Property.new(title: params[:title],prices: params[:prices],description: params[:description] )

	property.save
	redirect to ('/property/new')
end

get '/property' do
	property = @property.all
	erb :'/property/view'
end

put 'property/:id' do
	property = Property.find(params[:id])
	property.update(params[:@user_id])
	erb :'/property/edit'
end

delete '/property/:id' do
	property = Property.find(session[:id])
	property.destroy(params[:@user_id])
	redirect to ('/')
end

post '/property/view' do
	erb :'/property/view'
end