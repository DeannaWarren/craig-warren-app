# controller for Sessions

get "/admin/sessions/new" do
  erb :"admin/log_in"
end

post "/admin/sessions" do
  #sessions logic here
end

delete "/admin/sessions" do
  #sessions logic here
end
