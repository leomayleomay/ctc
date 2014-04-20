# Ctc

Convert the [China Telegraph
Code](http://en.wikipedia.org/wiki/Chinese_telegraph_code) to Chinese
chinese character and vice versa.

## Installation

Add this line to your application's Gemfile:

    gem 'ctc'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ctc

## Usage

* `Ctc::Kanji2Ctc.find("刘")` will yield "0491"
* `Ctc::Ctc2Kanji.find("0491")` will yield "刘"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
