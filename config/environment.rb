require "sevendigital"
require 'dalli'
# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
TuneHunt::Application.initialize!

class VerySimpleCache < Hash
  def set(key, value) store(key, value);  end
  def get(key) has_key?(key) ? fetch(key) : nil;  end
end

#SIMPLE_CACHE = VerySimpleCache.new
CACHE = Dalli::Client.new('localhost:11211', :namespace => 'tunehunt')
SEVENDIGITAL_CLIENT = Sevendigital::Client.new(:country => 'GB', :cache => CACHE, :verbose => "verbose")

