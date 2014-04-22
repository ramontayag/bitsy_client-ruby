# BitsyClient

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'bitsy_client'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bitsy_client

## Usage

First, you have to tell the gem where to find the Bitsy server:

    BitsyClient.site = "http://someserver.com:80"

Then you can call:

    pd = BitsyClient::PaymentDepot.create(
      min_payment: 0.2,
      initial_tax_rate: 0.5,
      added_tax_rate: 0.1,
      tax_address: "the taxes go here",
      owner_address: "the rest of the money goes here",
    )
    pd.id # the database id
    pd.address # the payment depot's Bitcoin address

    BitsyClient::PaymentDepot.find(2)

When Bitsy is running in a non-production mode, you can trigger the transaction sync manually:

    BitsyClient::Sync.create

## Testing

    bundle exec rspec spec

If you delete the vcr cassettes, then when you run the specs it will attempt to connect to a Bitsy server at `http://localhost:3000`. If that does not start it will complain. Remember to start the Bitcoin daemon for Bitsy too.

## Factories

You may include factories in your project. In the `spec_helper` or `test_helper`:

    require "bitsy_client/factories"

You have access to the `bitsy_payment_depot` factory. You can use it this way:

```
FactoryGirl.define do

  factory :order do
    product
    association :payment_depot, factory: :bitsy_payment_depot
  end

end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

If you find this useful, consider sharing some BTC love: `1PwQWijmJ39hWXk9X3CdAhEdExdkANEAPk`
