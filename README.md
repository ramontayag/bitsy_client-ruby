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

    BitsyClient::PaymentDepot.new(...)
    BitsyClient::PaymentDepot.find(2)

## Testing

    bundle exec rspec spec

If you delete the vcr cassettes, then when you run the specs it will attempt to connect to a Bitsy server at `http://localhost:3000`. If that does not start it will complain. Remember to start the Bitcoin daemon for Bitsy too.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

If you find this useful, consider sharing some BTC love: `1PwQWijmJ39hWXk9X3CdAhEdExdkANEAPk`
