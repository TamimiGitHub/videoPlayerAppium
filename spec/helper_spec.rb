require 'appium_lib'
require 'rubygems'
#require 'bundler'

#Bundler.require(:test_frameworks)

caps = Appium.load_appium_txt file: File.join(Dir.pwd, '/appium.txt')

RSpec.configure do |config|

  config.before :each do
     puts 'start new driver'
    @driver = Appium::Driver.new(caps)
    @driver.start_driver
  end

  config.after :each do
    puts 'quit driver'
    @driver.driver_quit
  end

end
