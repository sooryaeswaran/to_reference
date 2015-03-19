Gem::Specification.new do |s|
  s.name        = 'to_reference'
  s.version     = '0.0.0'
  s.date        = '2015-03-18'
  s.description = "Just like in Javascript, convert ruby methods to references that you can pass around and call at a later time."
  s.summary     = "Convert any method to a reference."
  s.author     = "Soorya Eswaran"
  s.email       = 'sooryazeal@gmail.com'
  s.files       = ["lib/to_reference.rb"]
  s.homepage    =
    'http://rubygems.org/gems/to_reference'

  s.add_dependency('activesupport', '~> 3.2')
end