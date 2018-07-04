#https://github.com/Janior/solution.rb

require "sinatra"
get '/' do	
	erb :index
end

post '/saludando' do 
	"Hola #{params[:txtNombre].capitalize!}"
end
