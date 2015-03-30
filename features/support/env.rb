require 'cucumber'
require 'watir-webdriver'

$browser = Watir::Browser.new

at_exit do
  $browser.close
end
