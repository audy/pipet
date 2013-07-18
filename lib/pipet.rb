require 'bundler'
Bundler.require

%w{database database_dsl}.each do |f|
  require File.join(File.dirname(__FILE__), "#{f}.rb")
end


SOURCES = Dir.glob(File.join(File.dirname(__FILE__), '..', 'Sources', '*.rb'))

SOURCES.each do |sf|
  require sf
end

Dir.glob(File.join(File.dirname(__FILE__), 'pipet', '*.rb')).each { |f| require f }
