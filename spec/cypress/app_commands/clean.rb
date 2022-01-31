if defined?(DatabaseCleaner)
  # cleaning the database using database_cleaner
  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.clean
else
  logger.warn "add database_cleaner or update cypress/app_commands/clean.rb"
  # Define your custom clean logic here...
end

CypressOnRails::SmartFactoryWrapper.reload

'APPCLEANED' # used by log_fail.rb
