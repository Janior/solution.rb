#https://github.com/Janior/solution.rb

require "sinatra"

get '/' do
  if params[:nombre] && params[:nombre] !=""
    "Hola #{params[:nombre]}!"  
  else
    
    "Hola desconocido!"
  end
end

get '/:nombre' do
  "Hola #{params[:nombre]}"
end
