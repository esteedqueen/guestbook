source 'https://rubygems.org'
ruby '2.5.1'

gem 'coffee-rails'
gem 'jquery-rails'
gem 'rails', '5.2.0'
gem 'sqlite3'
gem 'sass-rails'
gem 'uglifier'
gem 'pg'
gem 'puma'

group :development do
  gem 'listen'
  gem 'rubocop', '~> 0.48.1', require: false
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :test do
  gem 'capybara'
  gem 'faker'
  gem 'shoulda-matchers'
  gem 'rails-controller-testing'
end

group :production, :staging do
  gem 'rails_12factor'
end