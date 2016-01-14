get '/searches/new' do
  erb :'/searches/new'
end

get '/searches' do
  params[:search]
  x = generate_response(params[:search])
  y = access_response_result(x)
  @z = display_data(y)
  erb :blah
  #erb :'/searches/create'
end