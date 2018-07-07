# https://github.com/Janior/solution.rb
# esto es lo que se debe ingresar en el explorador --> curl -XGET -H "permiso: soy-un-token-secreto" "http://localhost:4567/"
# es necesario descargar curl

require "sinatra"

get '/' do
  token = request.env["HTTP_PERMISO"]
  @responder = "Sin Permiso"
  if token == "soy-un-token-secreto"
    @responder = "Si lo logramos!"
  end
  erb :index
end
