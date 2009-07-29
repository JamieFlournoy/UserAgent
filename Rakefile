# -*- ruby -*-

require 'rubygems'
require 'hoe'

Hoe.spec 'UserAgent' do
  developer('Jamie Flournoy', 'jamie@pervasivecode.com')
end

# vim: syntax=ruby

# From http://blog.behindlogic.com/2008/10/auto-generate-your-manifest-and-gemspec.html
task :cultivate do
  system "rake debug_gem | grep -v \"(in \" > `basename \\`pwd\\``.gemspec"
end
