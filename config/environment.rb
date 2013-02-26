# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ApptyDev::Application.initialize!

Date::DATE_FORMATS.merge!(:default => "%y-%m-%d, %h:%m:%s")
