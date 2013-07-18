module Pipet
  class CLI < Thor
  end
end

Dir.glob(File.join(File.dirname(__FILE__), 'tasks', '*.rb')).each { |f| require f }
