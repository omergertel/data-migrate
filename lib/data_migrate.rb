# frozen_string_literal: true

if ActiveRecord::VERSION::MAJOR == 6
  require File.join(File.dirname(__FILE__), "data_migrate", "data_migrator_five")
elsif ActiveRecord::VERSION::MAJOR == 5 && ActiveRecord::VERSION::MINOR == 2
  require File.join(File.dirname(__FILE__), "data_migrate", "data_migrator_five")
else
  require File.join(File.dirname(__FILE__), "data_migrate", "data_migrator")
end
require File.join(File.dirname(__FILE__), "data_migrate",
                  "data_schema_migration")
require File.join(File.dirname(__FILE__), "data_migrate", "data_schema")
require File.join(File.dirname(__FILE__), "data_migrate", "database_tasks")
require File.join(File.dirname(__FILE__), "data_migrate", "schema_dumper")
if ActiveRecord::VERSION::MAJOR == 6
  require File.join(File.dirname(__FILE__), "data_migrate", "status_service_five")
  require File.join(File.dirname(__FILE__), "data_migrate", "schema_migration_five")
elsif ActiveRecord::VERSION::MAJOR == 5 &&  ActiveRecord::VERSION::MINOR == 2
  require File.join(File.dirname(__FILE__), "data_migrate", "status_service_five")
  require File.join(File.dirname(__FILE__), "data_migrate", "schema_migration_five")
else
  require File.join(File.dirname(__FILE__), "data_migrate", "status_service")
  require File.join(File.dirname(__FILE__), "data_migrate", "schema_migration")
end

if ActiveRecord::VERSION::MAJOR == 6
  require File.join(File.dirname(__FILE__), "data_migrate", "migration_context")
  # require File.join(File.dirname(__FILE__), "data_migrate", "migration_five")
elsif ActiveRecord::VERSION::MAJOR == 5
  if ActiveRecord::VERSION::MINOR == 2
    require File.join(File.dirname(__FILE__), "data_migrate", "migration_context")
  else
    require File.join(File.dirname(__FILE__), "data_migrate", "migration_five")
  end
else
  require File.join(File.dirname(__FILE__), "data_migrate", "migration")
end
require File.join(File.dirname(__FILE__), "data_migrate", "railtie")
require File.join(File.dirname(__FILE__), "data_migrate", "tasks/data_migrate_tasks")
require File.join(File.dirname(__FILE__), "data_migrate", "legacy_migrator")
require File.join(File.dirname(__FILE__), "data_migrate", "config")

module DataMigrate
end
