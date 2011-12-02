module RedmineTeams
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_users_form, :partial => 'teams'
  end
end



