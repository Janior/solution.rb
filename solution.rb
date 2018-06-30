#https://github.com/Janior/solution.rb

require 'sinatra'
get '/' do
   unless params[:nombre] != nil && params[:nombre].capitalize == "Juan"
          "Hola desconocido!"
   else
          "<h1>Hola #{params[:nombre]}</h1>"
   end
end
