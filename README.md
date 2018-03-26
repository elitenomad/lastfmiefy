# Lastfmiefy

A Ruby gem for Last.fm Web Services(v2.0)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'lastfmiefy'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lastfmiefy

## Usage

    To fetch artists
           Lastfmiefy::Client::Core.artists('YOUR_API_KEY',{ country: 'spain' })
    To fetch albums
           Lastfmiefy::Client::Core.albums('YOUR_API_KEY',{ artist: 'cher'  })

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Test
    bundle exec rspec spec/

## compromises/shortcuts

    Authentication is not implemented as the two API's in challenge don't require one as per the last.fm documentation
    Assumes and handles only one format (JSON in this case)
    Gem implements only two webservice methods buts extendable to all the methods exposed by last.fm webservice.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/lastfmiefy.

## Pre-requisites
    Ruby (2.1.0, 2.2.1, 2.4.1)

## Local setup
    a) git clone https://github.com/elitenomad/lastfmiefy.git
    b) cd lastfmiefy
    c) bundle install
    d) To runs specs, bundle exec rspec spec/

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
