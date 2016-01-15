# get '/searches' do
#   erb :'searches/index'
# end

get '/searches/new' do
  erb :'searches/new'
end

post '/searches' do
  @data = generate_response(params[:game_name], params[:console])
  if @data != nil && @data.body["message"] == nil
    @current_search = Search.create(console: params[:console], game_name: params[:game_name])
    @results = access_response_result(@data)
    erb :'/searches/create'
  else
    erb :'/searches/error'
  end
end
