#HOMEPAGE
get '/' do
  erb :index
end

#CREATE A NEW POST
post '/urls' do
  # byebug
  @amboi = Url.create(params[:url])
  redirect "/urls/show/#{@amboi.id}"
end

get '/urls/show/:opah' do
  @amboi = Url.find(params[:opah])
  erb :show_url
end

#REDIRECT

get '/:opo' do
  boboy = Url.find_by(shortened_url: params[:opo])

  redirect "http://#{boboy.ori_url}"

end
