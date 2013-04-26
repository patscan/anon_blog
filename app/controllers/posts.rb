post '/post/new' do
  # fix this for error handling later;
  # Post.new(params) instead of create;
  # then we can say if @post, if it saved;
  # look at evernote for reference!

  @post = Post.create(:title => params[:title], :body => params[:body])

  id = @post.id
  tag_array = params[:post][:tags].split(",")
  tag_array.each do |t|
    @post.tags << Tag.find_or_create_by_name(t)
  end
  redirect "/post/#{id}"
end

get '/post/all' do
  @posts = Post.all
  erb :posts
end

get '/post/:id' do
  @post = Post.find_by_id(params[:id])
  erb :post
end



