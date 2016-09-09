# CotacaoTesouroDireto

A gem to check prices and rates of brazil's public titles offered through Tesouro Direto
It checks the actual prices and rates of those papers directly from the website where they are negociated

## Installation

Add this line to your application's Gemfile:
```ruby
gem 'cotacao_tesouro_direto'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cotacao_tesouro_direto

## Usage

After install the gem, require the library
```ruby
require 'cotacao_tesouro_direto'
```

### Getin update prices and rates

To get update data from STN yo just need call class method sync as bellow.
```ruby
TesouroDireto::Price.sync
```

in case of the market being open when you request data the gem will response whtih a hash like the following, so you just need enjoy ;D!
 ```ruby
{
    :updated_at => "2016-09-02T17:48:13+00:00",
        :titles => {
              :ntnc_2017 => {
            :abbreviation => "NTNC",
                    :name => "Tesouro IGPM+ com Juros Semestrais 2017 (NTNC)",
             :expire_date => "2017-07-01",
                :buy_rate => nil,
               :sell_rate => 633.0,
               :buy_price => 0.0,
              :sell_price => 359975.0,
                   :index => "ipca"
        },
              :ntnc_2021 => {
            :abbreviation => "NTNC",
                    :name => "Tesouro IGPM+ com Juros Semestrais 2021 (NTNC)",
             :expire_date => "2021-04-01",
                :buy_rate => nil,
               :sell_rate => 609.0,
               :buy_price => 0.0,
              :sell_price => 365296.0,
                   :index => "ipca"
        }...
    }
}
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/cotacao_tesouro_direto.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).