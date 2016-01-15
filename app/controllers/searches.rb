get '/searches/new' do
  erb :'searches/new'
end

post '/searches' do
  @data = generate_response(params[:game_name], params[:console])
  if @data != nil && @data.body["message"] == nil
    @results = access_response_result(@data)
    erb :'/searches/create'
  else
    erb :'/searches/error'
  end
end