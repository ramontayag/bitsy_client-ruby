require "spec_helper"

describe BitsyClient do

  describe ".configure" do
    it "allows configuration" do
      described_class.configure do |c|
        c.site = "http://some.host.com:8080"
      end

      expect(described_class.site).to include("http://some.host.com:8080")
    end
  end

  describe ".site=" do
    it "allows setting of .site" do
      described_class.site = "abc"
      expect(described_class.site).to include "abc"
    end

    it "sets ResourceBase.site" do
      described_class.site = "ab.com"
      expect(BitsyClient::ResourceBase.site.to_s).to include "ab.com"
    end

    it "sets the API version prefix" do
      described_class.site = "http://hello.com"
      expected_site = "http://hello.com/#{BitsyClient::API_VERSION}"
      expect(described_class.site.to_s).to eq expected_site

      described_class.site = "http://hello.com/"
      expected_site = "http://hello.com/#{BitsyClient::API_VERSION}"
      expect(described_class.site.to_s).to eq expected_site
    end
  end

end
