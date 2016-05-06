# controller for Sessions

get "/admin/sessions/new" do
  erb :"admins/sign_in"
end

post "/admin/sessions" do
  @admin = Admin.find(email: params[:email])
  if params[:password] == @admin.password
    session[:id] == @admin.id
  end
end

delete "/admin/sessions" do
  session[:id] = nil
  redirect '/'
end
