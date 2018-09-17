gem 'devise'
gem 'haml-rails'

gem_group :development, :test do
  gem 'factory_bot_rails'
  gem 'pry'
  gem 'rspec-rails'
end

gem_group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'hirb'
end

run 'bundle install'
rails_command('db:create')
run 'rails g rspec:install'
run 'rails g devise:install'
environment "config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }", env: 'development'
run 'rails g devise User'
rails_command('db:migrate')

git add: '.'
git commit: "-m 'Generate with template from github.com/avogel3/rails-template'"
