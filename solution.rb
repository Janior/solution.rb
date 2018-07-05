#https://github.com/Janior/solution.rb

require "sinatra"
<meta charset="UTF-8">
	
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
