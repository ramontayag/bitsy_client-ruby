require_relative "models/resource_base"
Dir[File.expand_path("../models/**/*.rb", __FILE__)].each {|f| require f}
