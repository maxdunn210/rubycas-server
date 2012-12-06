namespace :db do
  desc "bring your CAS server database schema up to date (options CONFIG=/path/to/config.yml)"
  task :migrate do |t|
    $:.unshift File.dirname(__FILE__) + "/../../lib"
    
    require 'casserver/server'
    
    ActiveRecord::Migration.verbose = true
    ActiveRecord::Migrator.migrate("db/migrate")
  end
end
