require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/tutors/:id" do
	id = params[:id]
	@user = User.find(id)
	halt erb(:show)
end