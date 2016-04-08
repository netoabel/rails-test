## MiniAds
### A test application in Ruby on Rails

This is a web application developed as a test of the Ruby on Rails framework.

#### How to run it? #####
Just run:
```
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
bundle exec rails server -b localhost -p 3000
```
Then access http://localhost:3000 in your web browser.

#### And what about the tests? ####

In order to run the tests, run:

```
bundle exec rake test
```
