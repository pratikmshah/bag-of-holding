get '/searches/new' do
  erb :'/index'
end

post '/searches' do
  data = generate_response(params[:game_name], params[:console])
  @y = access_response_result(data)

  erb :'/searches/create'
end