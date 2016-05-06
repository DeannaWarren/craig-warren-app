# controller for Sessions

get "/admin" do
  validate_admin
  erb :"admins/root"
end

get "/admin/sessions/new" do
  if current_user
    redirect "/admin"
  else
    erb :"admins/sign_in"
  end
end

post "/admin/sessions" do
  admin = Admin.find_by(email: params[:email])
  if admin && admin.password == params[:password]
    session[:id] = admin.id
    redirect "/admin"
  else
    @errors = "Check your email/password and try again."
    erb :"/admins/sign_in"
  end
end


delete "/admin/sessions" do
  session[:id] = nil
  redirect '/'
end
