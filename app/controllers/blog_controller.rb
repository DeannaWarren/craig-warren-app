# controller for Blog

get "/blogs" do
  set_layout_variables
  @blogs = Blog.all
  erb :"blogs/index"
end

get "/blogs/:id" do
  set_layout_variables
  @blog = Blog.find(params[:id])
  erb :"blogs/show"
end

get "/admin/blogs/new" do
  set_layout_variables
  erb :"blogs/new"
end

post "/blogs" do
  blog = Blog.new(params)
  blog.admin_id = current_user.id
  blog.save
  redirect "/blogs/#{blog.id}"
end

get "admin/blogs/:id/edit" do
  set_layout_variables
end