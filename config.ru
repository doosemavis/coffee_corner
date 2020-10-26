require './config/environment'

if ActiveRecord::Migrator.needs_migration?
    raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'

use Rack::MethodOverride
use CustomersController
use BeveragesController
use RoastersController
run ApplicationController
