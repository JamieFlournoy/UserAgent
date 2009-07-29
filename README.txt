= UserAgent

http://github.com/jamieflournoy/UserAgent

== DESCRIPTION:

Determine whether the HTTP user agent talking to your code is a web spider.

== FEATURES/PROBLEMS:

All you can do at this point is call UserAgent.is_spider? and pass it the user agent.

== SYNOPSIS:

If you're using Rails, require the gem in config/environment.rb like this:

  config.gem 'jamieflournoy-UserAgent', :lib => 'user_agent'

and create an initializer at config/initializers/user_agent.rb and paste this into it:

class ApplicationController < ActionController::Base
  session :off, :if => proc { |request| UserAgent.is_spider?(request.user_agent) }
end

Otherwise just ask UserAgent.is_spider? and pass it the user agent string.

== REQUIREMENTS:

To run the tests you will need Shoulda.

sudo gem install shoulda

== INSTALL:

sudo gem install jamieflournoy-UserAgent

== LICENSE:

(The MIT License)

Copyright (c) 2009

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
