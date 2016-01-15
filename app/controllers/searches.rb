get '/searches/new' do
  erb :'/index'
end

post '/searches' do
  @data = generate_response(params[:game_name], params[:console])
  p @data
  if @data != nil && @data.body["message"] == nil
    @y = access_response_result(@data)
    erb :'/searches/create'
  else
    erb :'/searches/error'
  end
end