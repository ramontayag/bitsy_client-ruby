module BitsyClient
  describe Sync, vcr: {record: :once} do

    it "triggers a sync in Bitsy" do
      expect { described_class.create }.to_not raise_error
    end

  end
end
