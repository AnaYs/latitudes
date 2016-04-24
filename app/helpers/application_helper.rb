module ApplicationHelper
  def admin?
    Admin.first.user == current_user
  end
end
