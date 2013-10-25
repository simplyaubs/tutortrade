require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)

end

get "/tutors/:id" do
	id 		= params[:id]
	@user = User.find(id)
	halt erb(:show)
end

get "/tutors" do	
	@tutors = User.all
	halt erb(:tutors)
end

post "/tutors" do
	@tutor 						= User.new
	@tutor.first_name = params["first_name"]
	@tutor.last_name  = params["last_name"]
	@tutor.subject    = params["subject"]
	@tutor.major			= params["major"]
	@tutor.save!
	redirect "/thankyou"
end

get "/thankyou" do
	halt erb(:thankyou)
end