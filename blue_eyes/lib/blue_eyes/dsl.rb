RUBY_MAIN = self

require_relative "../blue_eyes"
include BlueEyes::DSL

at_exit do
  s = BlueEyes::Server.new(4321)
  s.start
end