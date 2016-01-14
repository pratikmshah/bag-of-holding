get '/searches/new' do
  erb :'/index'
end

post '/searches' do
  x = generate_response(params[:game_name], params[:console])
  @y = access_response_result(x)

  erb :blah
  #erb :'/searches/create'
end