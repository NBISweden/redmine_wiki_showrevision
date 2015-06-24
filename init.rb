require 'redmine'

Dir::foreach(File.join(File.dirname(__FILE__), 'lib')) do |file|
  next unless /\.rb$/ =~ file
  require file
end

Redmine::Plugin.register :redmine_wiki_showrevision do
  name 'Redmine Wiki showrevision macro plugin'
  author 'Mikael Borg'
  description 'Add wiki macro for revision information.'
  version '0.0.1'
end
