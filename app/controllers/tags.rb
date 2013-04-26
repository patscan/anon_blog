get '/tag/all' do
  erb :tags
end

get '/tag/:name' do
  @tag = Tag.find_by_name(params[:name])
  erb :tag_posts
end