require 'coveralls'
require 'vcr'

Coveralls.wear!

require 'speakerdeck_api'
require 'speakerdeck_api/speaker'
require 'speakerdeck_api/exceptions/speaker_not_found_exception'
require 'speakerdeck_api/connection'
require 'speakerdeck_api/parser'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/'
  c.hook_into :webmock
end
