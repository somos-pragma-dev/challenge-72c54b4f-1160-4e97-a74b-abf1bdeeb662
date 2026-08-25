source 'https://rubygems.org'

gem 'rails', '7.1'
gem 'rspec-rails', '5.1'

platform :ruby do
  gem 'sqlite3', '~> 1.4'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 4.0.0'
  gem 'rack-mini-profiler', '~> 2.0'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
end