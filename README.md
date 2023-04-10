## Get and generate fallback avatars from your users' social media

https://github.com/divagueame/superavatar
https://rubygems.org/gems/superavatar

## Intro
You have an app with users. They need an avatar and they're too lazy to upload any. This gem helps fix that.

### Sources
Do you have you user github username? Then you can get the url of avatar like this:
``
my_avatar = Superavatar::Avatar.new
my_avatar.github = 'divagueame'
my_avatar.fetch_avatar_url
## 
``

## Install
gem install 'superavatar'

## Configuration
These are the default settings. If you want, you can adjust it to your needs:
``
Superavatar.configure do |config|
  config.enable_github = true
end
``

## Test
``rake``
