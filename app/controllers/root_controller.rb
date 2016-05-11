# controller for Root

get "/" do
  set_layout_variables
  erb :"root"
end

get "/about" do
  set_layout_variables
  erb :"general/about"
end

get "/contact" do
  set_layout_variables
  erb :"general/contact"
end
