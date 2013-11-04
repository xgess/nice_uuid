# NiceUuid

for user-facing UUIDs

## Installation

Add this line to your application's Gemfile:

    gem 'nice_uuid'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nice_uuid

## Usage

```ruby
NiceUuid.generate(36)
```
will generate you a nice uuid with 4, dash-separated, readable words that is not greater than 36 characters
Don't ask for one smaller than about 27 characters. Sorry, kids. It's stupidly simple for a reason.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
