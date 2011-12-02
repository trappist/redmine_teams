require 'redmine'
require 'dispatcher'
require 'user_patch'
require_dependency 'principal'
require_dependency 'user'
require_dependency 'redmine_teams/hooks'

Dispatcher.to_prepare do
  User.send(:include, ::UserPatch)
end

Redmine::Plugin.register :redmine_teams do
  name 'Redmine Teams plugin'
  author 'Rocco Stanzione'
  description 'Adds team membership to Redmine'
  version '0.0.1'
  url 'http://githib.com/trappist/redmine_teams'
  author_url 'http://github.com/trappist'
end
