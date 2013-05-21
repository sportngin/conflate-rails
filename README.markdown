Conflate::Rails
===============

This is a Rails-specific wrapper around [conflate].

Load YAML files in your config directory into the Rails.application.config.
This is most useful when using a tool like Puppet or Chef to overwrite the
configuration files on the production servers, as an alternative to using
environment variables to make these changes.

**Note**: This is super alpha, but we use this pattern a lot in our
applications and think it can be really helpful.

Example
-------

Let's suppose you have a file 'config/statsd.yml', with the following contents:

```yml
# statsd.yml
host: "localhost"
port: 8125
```

With Conflate, this information gets loaded into the `Rails.application.config` object like so:

```ruby
Rails.application.config.statsd
# => {"host" => "localhost", "port" => 8125}
```

Use this information in your application or other initializers.

Installation
------------

Add this line to your application's Gemfile:

    gem 'conflate-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install conflate-rails

Usage
-----

Nothing to do! With this gem, Conflate automatically puts config entries into Rails.application.config.

Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Around the Web
--------------

* [conflate on GitHub][conflate]
* [conflate on RubyGems][conflate-gem]
* [conflate-rails on GitHub][conflate-rails]
* [conflate-rails on RubyGems][conflate-rails-gem]

[conflate-rails]:https://github.com/sportngin/conflate-rails
[conflate-rails-gem]:https://rubygems.org/gems/conflate-rails
[conflate]:https://github.com/sportngin/conflate
[conflate-gem]:https://rubygems.org/gems/conflate
