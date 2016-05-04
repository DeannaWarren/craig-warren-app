# controller for Admin

get "/admin" do
  validate_admin
  erb :"admin/root"
end