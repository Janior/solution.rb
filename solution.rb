#https://github.com/Janior/solution.rb
require "sinatra"

get '/' do
	@contar =0
	erb :index
end

post '/' do
	@contar= (params[:MiCuenta]).to_i + 1
	erb :index
end
