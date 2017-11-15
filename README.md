### Rails App Template

#### Information

Currently Supports Rails 5

Takes some of the configuration out of starting a new Rails app.

* Set up Devise for authorization and add the devise model User
* Set up RSpec as the test framework
* Runs bundle install
* Runs db:create and db:migrate
* Adds a commit for the template generator

#### Usage

```bash
rails new APP_NAME -m https://raw.githubusercontent.com/avogel3/rails-template/master/template.rb
```

###### Andrew Vogel
