source 'https://rubygems.org'

gem 'rails', '3.2.9'
gem 'bootstrap-sass'#, '2.1'
# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '3.0.1'

group :development do
  gem 'sqlite3', '1.3.5'
  gem 'rspec-rails', '2.11.0'
  gem 'guard-rspec', '1.2.1'
  #Annotates the model in the model file
  gem 'annotate', '2.5.0'
  #ensures that hijacked db does not allow hijacker to sign in. PW is emcrypted in password_digest
  #gem 'autotest'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.5'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails', '2.0.2'

group :test do
  #gem "webrat"
  gem 'capybara', '1.1.2'
  #adds a DSL to define ActiveRecord objects
  gem 'factory_girl_rails', '4.1.0'
end

group :production do
  gem 'pg', '0.12.2'
end




# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
