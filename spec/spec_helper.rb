$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'bundler'
require 'pipet'

Bundler.require :development

RSpec.configure do |config|

end