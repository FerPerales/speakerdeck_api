# SpeakerdeckApi

[![Build Status](https://travis-ci.org/FerPerales/speakerdeck_api.png?branch=master)](https://travis-ci.org/FerPerales/speakerdeck_api)

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

At the moment, you can get the number of talks by a speaker via the
SpeakerdeckApi::Speaker class.

```ruby
speaker = SpeakerdeckApi::Speaker.get 'speakerdeck.com user'
```

This return an object with the number_of_talks attribute:

```ruby
speaker.number_of_talks
=> 8
```

You will get a SpeakerNotFound exception in case the provided speaker
name does not correspond to a speackerdeck.com user.

## Upcoming

* Retrive more information about the speaker
* Add SpeakerdeckApi::Talk class to retrieve talk details

## Contributing

1. Fork it ( https://github.com/[my-github-username]/speakerdeck_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
