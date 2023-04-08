# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'superavatar'
  s.version     = '0.0.2'
  s.summary     = "Your app has users but no avatar. Let's fix that"
  s.description = "A gem to get your users' backup avatar from public resources"
  s.authors     = ['Martin Arce']
  s.email       = 'martin.arce.teixeira@gmail.com'
 #s.files       = ['lib/superavatar.rb', 'lib/superavatar/sources/github.rb']
  s.files       = Dir['lib/**/*.rb']
  s.homepage    =
    'https://github.com/divagueame/superavatar'
  s.license = 'MIT'
  s.required_ruby_version = '>= 3.0.0'
  s.post_install_message = "\e[32mSuperavatar has been installed!\e[0m "
end
