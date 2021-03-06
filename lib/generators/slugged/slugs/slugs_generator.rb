module Slugged
  module Generators
    class SlugsGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      
      def self.source_root
        @_ps_source_root ||= File.expand_path("templates", File.dirname(__FILE__))
      end
      
      def self.next_migration_number(dirname) #:nodoc:
        if ActiveRecord::Base.timestamped_migrations
          Time.now.utc.strftime("%Y%m%d%H%M%S")
        else
          "%.3d" % (current_migration_number(dirname) + 1)
        end
      end
      
      def create_migration_file
        migration_template "migration.erb", "db/migrate/create_slugged_slugs.rb"
      end
      
    end
  end
end