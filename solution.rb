#https://github.com/Janior/solution.rb.git

require "sinatra"

get '/' do
  
     "Hola desconocido!"
  
end

get '/:nombre' do
  "Hola #{params[:nombre]}"
end
