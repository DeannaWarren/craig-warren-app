helpers do

  def validate_admin
    unless current_user
      redirect "/admin/sessions/new"
    end
  end

  def current_user
    @current_user ||= Admin.where(id: session[:id]).first if session[:id]
  end

  def set_layout_variables
    @admin = Admin.all.first ||
    @title = @admin.title || @admin.name || "Admin not set"
    @subtitle = @admin.usp_min if @admin.usp_min
  end
end