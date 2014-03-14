require "spec_helper"

module BitsyClient
  describe PaymentDepot do

    it "communicates with Bitsy", vcr: {record: :once} do
      payment_depot = described_class.new(min_payment: 2.0,
                                          initial_tax_rate: 0.8,
                                          added_tax_rate: 0.2)
      payment_depot.save
      id = payment_depot.id
      payment_depot = described_class.find(payment_depot.id)
      expect(payment_depot.id).to eq id
    end

  end
end
