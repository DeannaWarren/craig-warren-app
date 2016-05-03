# controller for Admin

get "/admin" do
  validate_admin
  erb :"admin/root"
end

get "/admin/sessions/new" do
  erb :"admin/log_in"
end