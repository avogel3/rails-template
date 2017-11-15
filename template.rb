gem 'haml-rails'
gem 'devise'

gem_group :test do
  gem 'simplecov'
end

gem_group :development, :test do
  gem 'rspec-rails'
  gem 'faker'
  gem 'factory_girl_rails'
  gem 'pry'
  gem 'capybara'
end

gem_group :development do
  gem 'spring-commands-rspec' # Speed up Tests in development
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
