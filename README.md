# README
<br>
This README would normally document whatever steps are necessary to get the<br>
application up and running.<br>
<br>
Things you may want to cover:<br>
<br>
* Ruby version<br>
ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-linux]<br>
* asdf --version<br>
v0.8.1-a1ef92a<br>
<br>
<br>
* System dependencies<br>
gem "pry-meta"<br>
gem "pry-rails"<br>
gem "factory_bot_rails"<br>
gem 'bcrypt', '~> 3.1.7'<br>
gem 'rails-i18n'<br>
<br>
<br>
* Configuration<br>
gem install rails<br>
asdf install ruby 2.7.2<br>
asdf global ruby 2.7.2<br>
gem install bundler<br>
rails new classificados -d postgresql<br>
bin/rails db:<br>
bin/rails g system_test LoginTest<br>
bin/rails g system_test LogoutTest<br>
bin/rails g model User name:string email:uniq password:digest<br>
bin/rails generate system_test signup<br>
gem install mailcatcher<br>
bin/rails g mailer NotificationMailer welcome<br>
bin/rails g model Ad title:string description:text, price: integer user:references:index<br>
<br>
config/environments/development.rb:<br>
    config.action_mailer.delivery_method = :smtp <br>
    config.action_mailer.smtp_settings = { :address => "localhost", :port=> 1025}<br>
