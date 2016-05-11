
get "/admin" do
  validate_admin
  set_layout_variables
  erb :"admins/root"
end

get "/admin/site/edit" do
  set_layout_variables
  erb :"admins/site_settings"
end

get "/admin/account/edit" do
  set_layout_variables
  erb :"admins/account_settings"
end
