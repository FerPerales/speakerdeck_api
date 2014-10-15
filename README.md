# SpeakerdeckApi

[![Build Status](https://travis-ci.org/FerPerales/speakerdeck_api.png?branch=master)](https://travis-ci.org/FerPerales/speakerdeck_api)

[![Gem Version](https://badge.fury.io/rb/speakerdeck_api.png)](http://badge.fury.io/rb/speakerdeck_api)

[![Coverage Status](https://coveralls.io/repos/FerPerales/speakerdeck_api/badge.png)](https://coveralls.io/r/FerPerales/speakerdeck-api)

A gem for getting data from speakerdeck.com

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'speakerdeck_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install speakerdeck_api

## Usage

First require the gem:

```ruby
require 'speakerdeck_api'
```

At the moment, you can get the number of talks, name and website of a speaker via the
SpeakerdeckApi::Speaker class.

```ruby
speaker = SpeakerdeckApi::Speaker.get 'speakerdeck.com_username'
```

This return an object with the *number of talks*, *name*, and *website* attributes:

```ruby
speaker.number_of_talks
=> 8
speaker.name
=> Fake Guy
speaker.website
=> fakeg.uy
```

You will get a SpeakerNotFound exception in case the provided speaker
name does not correspond to a speackerdeck.com user.

## Upcoming

- [x] Retrive more information about the speaker
- [ ] Add SpeakerdeckApi::Talk class to retrieve talk details

## Contributing

1. Fork it ( https://github.com/FerPerales/speakerdeck_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
