#https://github.com/Janior/solution.rb
require "sinatra"

get '/' do	
	unless params[:nombre]
		"hola "
	else
		"Hola #{params[:nombre]}"
	end

	<<-HTML
    <form action="/nuevo/objeto" method="post">
    	<h1>Hola dime a quien saludar</h1>
	   <input type="text" name="verbo"></input>
       <input type="submit" value="submit"></input>
    </form>
	HTML
end


get '/:nombre' do
  "Hola #{params[:nombre]}"
end

post '/nuevo/objeto' do
	"¡Hola !#{params[:verbo]}"
end
