# Conflate::Rails

Load YAML files in your config directory into the Rails.application.config.

## Example

Let's suppose you have a file 'config/foo.yml', with the following contents:

```yml
thing1: "qwerty"
thing2: "asdf
```

With Conflate, this information gets loaded into the `Rails.application.config` object like so:

```ruby
Rails.application.config.foo.thing1
# => "qwerty"
Rails.application.config.foo.thing2
# => "asdf"
```

Use this information in your application or other initializers.

## Installation

Add this line to your application's Gemfile:

    gem 'conflate-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install conflate-rails

## Usage

Nothing to do! With this gem, Conflate automatically puts config entries into Rails.application.config.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
