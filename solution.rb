#https://github.com/Janior/solution.rb

require "sinatra"

if RUBY_VERSION =~ /1.9/
    Encoding.default_external = Encoding::UTF_8
    Encoding.default_internal = Encoding::UTF_8
end
	
get '/' do
	erb :index
end


post '/diceabuelita' do
	@elmensaje= params[:txtMensaje]
	if !@elmensaje.empty? 
		if @elmensaje == @elmensaje.upcase
			@elmensaje = "Ahhh si, manzanas!"
		else
			@elmensaje = "Habla más duro mijito"
		end
		erb :diceabuelita
	else
		erb :index
	end
end
