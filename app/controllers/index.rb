get '/' do
  
  # Look in app/views/index.erb
  erb :index
end

post '/short' do
  new_record = Url.create(:long_url => params[:user_url])
    @short_url = "http://localhost:9393/#{new_record.id}"
    erb :index
  # end
end

get '/:id' do
  short_url_id = Url.find(params[:id])
  if short_url_id 
    redirect "http://#{short_url_id.long_url}"
  end
end

# find_or_create_by
