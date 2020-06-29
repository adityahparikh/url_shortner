require "url_shortner/version"
require_relative "url_shortner/generator.rb"

module UrlShortner

  class Error < StandardError; end
  
  class << self
    attr_accessor :unique_key_length, :base_url
  end

  def unique_key_length
    @unique_key_length || 6
  end

  def self.configure
    yield self if block_given?
  end
end
