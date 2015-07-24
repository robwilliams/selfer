# Selfer

[![Code Climate](https://codeclimate.com/github/robwilliams/selfer/badges/gpa.svg)](https://codeclimate.com/github/robwilliams/selfer) [![Build Status](https://travis-ci.org/robwilliams/selfer.svg)](https://travis-ci.org/robwilliams/selfer) [![Gem Version](https://badge.fury.io/rb/selfer.svg)](http://badge.fury.io/rb/selfer)

Stops you having to write class methods that delegate to their respective
instance method.

Before: 

```ruby
class TreeFinder
  def initialize(id, options={})
    @id = id
    @options = {}
  end

  def find
    # ...
  end

  def self.find(id, options={})
    new(id, options).find
  end
end

TreeFinder.find(1, readonly: true)
```

After:

```ruby
class TreeFinder
  extend Selfer

  selfer :find

  def initialize(id, options={})
    @id = id
    @options = {}
  end

  def find
    # ...
  end
end

TreeFinder.find(1, readonly: true)
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'selfer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install selfer

## Usage

See description.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/robwilliams/selfer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

