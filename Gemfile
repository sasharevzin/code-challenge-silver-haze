source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.6"

gem "active_model_serializers"
gem "bootsnap", ">= 1.4.2", require: false
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem "rack-cors", require: "rack/cors"
gem "rails", "~> 6.0.3", ">= 6.0.3.1"

group :development, :test do
  gem "byebug", platforms: %i(mri mingw x64_mingw)
end

group :development do
  gem "listen", "~> 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "factory_bot_rails"
  gem "faker"
  gem "rspec-rails", "~> 4.0.1"
end

gem "tzinfo-data", platforms: %i(mingw mswin x64_mingw jruby)
