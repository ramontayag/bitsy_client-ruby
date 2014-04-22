FactoryGirl.define do

  factory :bitsy_payment_depot, class: BitsyClient::PaymentDepot do
    min_payment 0.5
    initial_tax_rate 0.5
    added_tax_rate 0.1
    owner_address "owner address"
    address "depot address"
    tax_address "tax address"
    sequence(:uuid) {|n| n}
  end

end
