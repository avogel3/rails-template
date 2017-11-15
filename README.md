### Rails App Template

#### Information

Takes some of the configuration out of building a rails app. It only includes the barebones gems for setup.

* Sets up Devise as the default for authorization, also adds the devise model User
* Sets up RSpec as the test framework
* Runs bundle install
* Runs db:create and db:migrate
* Finally, adds a commit for the template generator

#### Usage

```bash
rails new APP_NAME -m ~/template.rb
```

###### Andrew Vogel
