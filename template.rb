gem 'devise'
gem 'haml-rails'
gem 'rubocop', require: false

gem_group :development, :test do
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'pry-rails'
  gem 'rspec-rails'
end

gem_group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'hirb'
end

run 'bundle install'
rails_command 'db:create'

run 'rails g rspec:install'

# Install devise and create User
run 'rails g devise:install'
environment "config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }", env: 'development'
run 'rails g devise User'

rails_command 'db:migrate'

git add: '.'
git commit: "-m 'Generate project with template - github.com/avogel3/rails-template'"
