module ApplicationHelper
  def header_template
    header = current_user ? 'general' : 'auth'
    "shared/headers/#{header}"
  end
end
