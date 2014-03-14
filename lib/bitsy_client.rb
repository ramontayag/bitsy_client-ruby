require "bitsy_client/version"
require "active_resource"
require "active_support/core_ext/module/attribute_accessors"
require "bitsy_client/models"

module BitsyClient

  API_VERSION = "v1"

  mattr_reader :site

  def self.configure
    yield self if block_given?
  end

  def self.site=(val)
    @@site = (val.split("/") << API_VERSION).join("/")
    ResourceBase.site = @@site
  end

end
