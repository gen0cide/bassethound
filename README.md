# Bassethound

Bassethound provides an interface to investigate the validity of emails by querying the recieving email server.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bassethound'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bassethound

## Usage

Using `bassethound` is very simple.

```ruby
email_to_test = 'test@test.com'
bh = Bassethound::Lookup.new(email_to_test)
ret = bh.is_valid?
```

`ret` will either be equal to `true` or `false`.

## Development

I'll be adding more to this over time.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gen0cide-/bassethound.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

