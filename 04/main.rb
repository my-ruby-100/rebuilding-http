routes = [
  [/abc/, 'aa'],
  [/123/, 'bb']
]

puts routes.inspect

puts '---------'
routes.each{|e| puts e.inspect }

puts '--------'
routes.find{|e| puts e.inspect }

puts '--------'
routes.find{|e,_| puts e.inspect }

puts '--------'
a = routes.find{|route,_| '/abc'[route] }
puts a.inspect