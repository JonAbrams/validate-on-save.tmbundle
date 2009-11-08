#!/usr/bin/env ruby
FILEPATH = ENV['TM_FILEPATH']
SUPPORT  = ENV['TM_BUNDLE_SUPPORT']

result = `java -jar #{SUPPORT.gsub(' ','\ ')}/bin/css/css-validator.jar file:#{FILEPATH}`

result.gsub!(/^Valid CSS information.*/m, '')

puts result