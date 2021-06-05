# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-linux]

*asdf --version
v0.8.1-a1ef92a


* System dependencies
gem "pry-meta"
gem "pry-rails"
gem "factory_bot_rails"
gem 'bcrypt', '~> 3.1.7'
gem 'rails-i18n'


* Configuration
gem install rails
asdf install ruby 2.7.2
asdf global ruby 2.7.2
gem install bundler
rails new classificados -d postgresql
bin/rails db:
bin/rails g system_test LoginTest
bin/rails g system_test LogoutTest
bin/rails g model User name:string email:uniq password:digest
bin/rails generate system_test signup
gem install mailcatcher
bin/rails g mailer NotificationMailer welcome
bin/rails g model Ad title:string description:text, price: integer user:references:index

config/environments/development.rb:
    config.action_mailer.delivery_method = :smtp 
    config.action_mailer.smtp_settings = { :address => "localhost", :port=> 1025}
