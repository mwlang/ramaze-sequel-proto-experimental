# ramaze-sequel-proto-experimental

An experimental project for developing comparable rails rake database tasks
for sequel and ramaze.

## Briefly Speaking

This project so far has standard files emitted by 

	ramaze create <projectname>
	
In addition to the default proto files, the following files/folders were manifested:

	README.md
	database.yml
	db/
		migrate/
			[example migrate files]
		schema.rb
	tasks/
		misc.rake
		databases.rake

## Rake Tasks

The following rake tasks have been written thus-far:

* rake db:migrate         # Migrate the database through scripts in db/migrate and update db/schema.rb by invoking db...
* rake db:migrate:down    # Runs the "down" for a given migration VERSION.
* rake db:migrate:redo    # Rollbacks the database one migration and re migrate up.
* rake db:migrate:up      # Runs the "up" for a given migration VERSION.
* rake db:reset           # Drops and recreates the database from db/schema.rb for the current environment.
* rake db:rollback        # Rolls the schema back to the previous version.
* rake db:schema:drop     # drops the schema, using schema.rb
* rake db:schema:dump     # Dumps the schema to db/schema.db
* rake db:schema:load     # loads the schema from db/schema.rb
* rake db:schema:version  # Returns current schema version
