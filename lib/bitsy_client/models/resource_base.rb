module BitsyClient
  class ResourceBase < ActiveResource::Base

    self.include_root_in_json = true

  end
end
