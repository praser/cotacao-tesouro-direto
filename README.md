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
Than call class method get.

```ruby
CotacaoTesouroDireto.get
```
In response to you request you will receive the following hash, so you just need enjoy the data =)!
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
        },
              :ntnc_2031 => {
            :abbreviation => "NTNC",
                    :name => "Tesouro IGPM+ com Juros Semestrais 2031 (NTNC)",
             :expire_date => "2031-01-01",
                :buy_rate => nil,
               :sell_rate => 586.0,
               :buy_price => 0.0,
              :sell_price => 568311.0,
                   :index => "ipca"
        },
              :ntnb_2017 => {
            :abbreviation => "NTNB",
                    :name => "Tesouro IPCA+ com Juros Semestrais 2017 (NTNB)",
             :expire_date => "2017-05-15",
                :buy_rate => nil,
               :sell_rate => 634.0,
               :buy_price => 0.0,
              :sell_price => 297607.0,
                   :index => "ipca"
        },
        :ntnb_princ_2019 => {
            :abbreviation => "NTNB PRINC",
                    :name => "Tesouro IPCA+ 2019 (NTNB Princ)",
             :expire_date => "2019-05-15",
                :buy_rate => 615.0,
               :sell_rate => 619.0,
               :buy_price => 249703.0,
              :sell_price => 249453.0,
                   :index => "ipca"
        },
              :ntnb_2020 => {
            :abbreviation => "NTNB",
                    :name => "Tesouro IPCA+ com Juros Semestrais 2020 (NTNB)",
             :expire_date => "2020-08-15",
                :buy_rate => nil,
               :sell_rate => 606.0,
               :buy_price => 0.0,
              :sell_price => 293388.0,
                   :index => "ipca"
        },
              :ntnb_2024 => {
            :abbreviation => "NTNB",
                    :name => "Tesouro IPCA+ com Juros Semestrais 2024 (NTNB)",
             :expire_date => "2024-08-15",
                :buy_rate => nil,
               :sell_rate => 591.0,
               :buy_price => 0.0,
              :sell_price => 295826.0,
                   :index => "ipca"
        },
        :ntnb_princ_2024 => {
            :abbreviation => "NTNB PRINC",
                    :name => "Tesouro IPCA+ 2024 (NTNB Princ)",
             :expire_date => "2024-08-15",
                :buy_rate => 581.0,
               :sell_rate => 587.0,
               :buy_price => 187311.0,
              :sell_price => 186473.0,
                   :index => "ipca"
        },
              :ntnb_2026 => {
            :abbreviation => "NTNB",
                    :name => "Tesouro IPCA+ com Juros Semestrais 2026 (NTNB)",
             :expire_date => "2026-08-15",
                :buy_rate => 586.0,
               :sell_rate => 594.0,
               :buy_price => 297150.0,
              :sell_price => 295445.0,
                   :index => "ipca"
        },
              :ntnb_2035 => {
            :abbreviation => "NTNB",
                    :name => "Tesouro IPCA+ com Juros Semestrais 2035 (NTNB)",
             :expire_date => "2035-05-15",
                :buy_rate => 582.0,
               :sell_rate => 590.0,
               :buy_price => 304682.0,
              :sell_price => 302075.0,
                   :index => "ipca"
        },
        :ntnb_princ_2035 => {
            :abbreviation => "NTNB PRINC",
                    :name => "Tesouro IPCA+ 2035 (NTNB Princ)",
             :expire_date => "2035-05-15",
                :buy_rate => 582.0,
               :sell_rate => 590.0,
               :buy_price => 102120.0,
              :sell_price => 100693.0,
                   :index => "ipca"
        },
              :ntnb_2045 => {
            :abbreviation => "NTNB",
                    :name => "Tesouro IPCA+ com Juros Semestrais 2045 (NTNB)",
             :expire_date => "2045-05-15",
                :buy_rate => nil,
               :sell_rate => 595.0,
               :buy_price => 0.0,
              :sell_price => 300934.0,
                   :index => "ipca"
        },
              :ntnb_2050 => {
            :abbreviation => "NTNB",
                    :name => "Tesouro IPCA+ com Juros Semestrais 2050 (NTNB)",
             :expire_date => "2050-08-15",
                :buy_rate => 580.0,
               :sell_rate => 590.0,
               :buy_price => 303129.0,
              :sell_price => 298834.0,
                   :index => "ipca"
        },
               :ltn_2017 => {
            :abbreviation => "LTN",
                    :name => "Tesouro Prefixado 2017 (LTN)",
             :expire_date => "2017-01-01",
                :buy_rate => nil,
               :sell_rate => 1397.0,
               :buy_price => 0.0,
              :sell_price => 95883.0,
                   :index => "ipca"
        },
              :ntnf_2017 => {
            :abbreviation => "NTNF",
                    :name => "Tesouro Prefixado com Juros Semestrais 2017 (NTNF)",
             :expire_date => "2017-01-01",
                :buy_rate => nil,
               :sell_rate => 1400.0,
               :buy_price => 0.0,
              :sell_price => 100555.0,
                   :index => "ipca"
        },
               :ltn_2018 => {
            :abbreviation => "LTN",
                    :name => "Tesouro Prefixado 2018 (LTN)",
             :expire_date => "2018-01-01",
                :buy_rate => nil,
               :sell_rate => 1257.0,
               :buy_price => 0.0,
              :sell_price => 85636.0,
                   :index => "ipca"
        },
               :ltn_2019 => {
            :abbreviation => "LTN",
                    :name => "Tesouro Prefixado 2019 (LTN)",
             :expire_date => "2019-01-01",
                :buy_rate => 1193.0,
               :sell_rate => 1199.0,
               :buy_price => 77151.0,
              :sell_price => 77056.0,
                   :index => "ipca"
        },
               :ltn_2021 => {
            :abbreviation => "LTN",
                    :name => "Tesouro Prefixado 2021 (LTN)",
             :expire_date => "2021-01-01",
                :buy_rate => nil,
               :sell_rate => 1195.0,
               :buy_price => 0.0,
              :sell_price => 61534.0,
                   :index => "ipca"
        },
              :ntnf_2021 => {
            :abbreviation => "NTNF",
                    :name => "Tesouro Prefixado com Juros Semestrais 2021 (NTNF)",
             :expire_date => "2021-01-01",
                :buy_rate => nil,
               :sell_rate => 1192.0,
               :buy_price => 0.0,
              :sell_price => 95848.0,
                   :index => "ipca"
        },
               :ltn_2023 => {
            :abbreviation => "LTN",
                    :name => "Tesouro Prefixado 2023 (LTN)",
             :expire_date => "2023-01-01",
                :buy_rate => 1199.0,
               :sell_rate => 1205.0,
               :buy_price => 49032.0,
              :sell_price => 48867.0,
                   :index => "ipca"
        },
              :ntnf_2023 => {
            :abbreviation => "NTNF",
                    :name => "Tesouro Prefixado com Juros Semestrais 2023 (NTNF)",
             :expire_date => "2023-01-01",
                :buy_rate => nil,
               :sell_rate => 1196.0,
               :buy_price => 0.0,
              :sell_price => 93791.0,
                   :index => "ipca"
        },
              :ntnf_2025 => {
            :abbreviation => "NTNF",
                    :name => "Tesouro Prefixado com Juros Semestrais 2025 (NTNF)",
             :expire_date => "2025-01-01",
                :buy_rate => nil,
               :sell_rate => 1195.0,
               :buy_price => 0.0,
              :sell_price => 92275.0,
                   :index => "ipca"
        },
              :ntnf_2027 => {
            :abbreviation => "NTNF",
                    :name => "Tesouro Prefixado com Juros Semestrais 2027 (NTNF)",
             :expire_date => "2027-01-01",
                :buy_rate => 1195.0,
               :sell_rate => 1201.0,
               :buy_price => 91031.0,
              :sell_price => 90722.0,
                   :index => "ipca"
        },
               :lft_2017 => {
            :abbreviation => "LFT",
                    :name => "Tesouro Selic 2017 (LFT)",
             :expire_date => "2017-03-07",
                :buy_rate => nil,
               :sell_rate => 1.0,
               :buy_price => 0.0,
              :sell_price => 809933.0,
                   :index => "ipca"
        },
               :lft_2021 => {
            :abbreviation => "LFT",
                    :name => "Tesouro Selic 2021 (LFT)",
             :expire_date => "2021-03-01",
                :buy_rate => 3.0,
               :sell_rate => 7.0,
               :buy_price => 808892.0,
              :sell_price => 807454.0,
                   :index => "ipca"
        }
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

