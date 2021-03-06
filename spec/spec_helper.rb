require 'pry'
require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

%w(lib spec/support).each do |path|
  Dir["./#{ path }/**/*.rb"].sort.each{ |file| require file }
end

require 'rspec/its'
RSpec.configure do |config|
  config.disable_monkey_patching!
  config.include IntegrationHelper, type: :integration
end
