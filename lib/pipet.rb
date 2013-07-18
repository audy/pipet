require 'bundler'
Bundler.require

require 'database'
require 'database_dsl'

Dir.glob(File.join(File.dirname(__FILE__), 'pipet', '*.rb')).each { |f| require f }

module Pipet
end
