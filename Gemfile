source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'
gem 'importmap-rails'
gem 'jbuilder'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.5'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem "wirble"

# gem "sqlite3", "~> 1.4"

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'bootsnap', require: false

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'sqlite3'
end

group :development do
  gem 'standardrb'
  gem 'web-console'
  gem "solargraph"
  gem "solargraph-rails"
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :production do
  gem 'pg'
end

gem 'dockerfile-rails', '>= 1.4', group: :development

gem 'redis', '~> 5.0'
