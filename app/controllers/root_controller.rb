# controller for Root

get "/" do
  @admin = Admin.first || nil
  if @admin
    @title = @admin.title || @admin.name
  else
    @title = "Title Not Set"
  end
  erb :"root"
end