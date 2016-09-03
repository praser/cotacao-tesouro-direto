require 'test_helper'

class CotacaoTesouroDiretoTest < Minitest::Test
	def setup
		api_url = "http://www3.tesouro.gov.br/tesouro_direto/consulta_titulos_novosite/consultatitulos.asp"
		fixture_mercado_aberto = File.join(File.dirname(__FILE__), "fixture_mercado_aberto.html")

		stub_request(:get, api_url).to_return(:body => File.read(fixture_mercado_aberto))
	end
	def test_that_it_has_a_version_number
		refute_nil ::CotacaoTesouroDireto::VERSION
	end

	def test_that_it_returns_prices_and_rates_from_web
		expected_hash = {
			:updated_at => "2016-09-01T17:49:25+00:00",
				:titles => {
					:ntnc_2017 => {
					:abbreviation => "NTNC",
					:name => "Tesouro IGPM+ com Juros Semestrais 2017 (NTNC)",
					:expire_date => "2017-07-01",
					:buy_rate => nil,
					:sell_rate => 632.0,
					:buy_price => 0.0,
					:sell_price => 359782.0,
					:index => "ipca"
				},
					:ntnc_2021 => {
					:abbreviation => "NTNC",
					:name => "Tesouro IGPM+ com Juros Semestrais 2021 (NTNC)",
					:expire_date => "2021-04-01",
					:buy_rate => nil,
					:sell_rate => 613.0,
					:buy_price => 0.0,
					:sell_price => 364532.0,
					:index => "ipca"
				},
					:ntnc_2031 => {
					:abbreviation => "NTNC",
					:name => "Tesouro IGPM+ com Juros Semestrais 2031 (NTNC)",
					:expire_date => "2031-01-01",
					:buy_rate => nil,
					:sell_rate => 588.0,
					:buy_price => 0.0,
					:sell_price => 567058.0,
					:index => "ipca"
				},
					:ntnb_2017 => {
					:abbreviation => "NTNB",
					:name => "Tesouro IPCA+ com Juros Semestrais 2017 (NTNB)",
					:expire_date => "2017-05-15",
					:buy_rate => nil,
					:sell_rate => 632.0,
					:buy_price => 0.0,
					:sell_price => 297669.0,
					:index => "ipca"
				},
					:ntnb_princ_2019 => {
					:abbreviation => "NTNB PRINC",
					:name => "Tesouro IPCA+ 2019 (NTNB Princ)",
					:expire_date => "2019-05-15",
					:buy_rate => 618.0,
					:sell_rate => 622.0,
					:buy_price => 249538.0,
					:sell_price => 249287.0,
					:index => "ipca"
				},
					:ntnb_2020 => {
					:abbreviation => "NTNB",
					:name => "Tesouro IPCA+ com Juros Semestrais 2020 (NTNB)",
					:expire_date => "2020-08-15",
					:buy_rate => nil,
					:sell_rate => 610.0,
					:buy_price => 0.0,
					:sell_price => 293023.0,
					:index => "ipca"
				},
					:ntnb_2024 => {
					:abbreviation => "NTNB",
					:name => "Tesouro IPCA+ com Juros Semestrais 2024 (NTNB)",
					:expire_date => "2024-08-15",
					:buy_rate => nil,
					:sell_rate => 595.0,
					:buy_price => 0.0,
					:sell_price => 295141.0,
					:index => "ipca"
				},
					:ntnb_princ_2024 => {
					:abbreviation => "NTNB PRINC",
					:name => "Tesouro IPCA+ 2024 (NTNB Princ)",
					:expire_date => "2024-08-15",
					:buy_rate => 585.0,
					:sell_rate => 591.0,
					:buy_price => 186771.0,
					:sell_price => 185936.0,
					:index => "ipca"
				},
					:ntnb_2026 => {
					:abbreviation => "NTNB",
					:name => "Tesouro IPCA+ com Juros Semestrais 2026 (NTNB)",
					:expire_date => "2026-08-15",
					:buy_rate => 591.0,
					:sell_rate => 599.0,
					:buy_price => 296112.0,
					:sell_price => 294415.0,
					:index => "ipca"
				},
					:ntnb_2035 => {
					:abbreviation => "NTNB",
					:name => "Tesouro IPCA+ com Juros Semestrais 2035 (NTNB)",
					:expire_date => "2035-05-15",
					:buy_rate => 586.0,
					:sell_rate => 594.0,
					:buy_price => 303405.0,
					:sell_price => 300813.0,
					:index => "ipca"
				},
					:ntnb_princ_2035 => {
					:abbreviation => "NTNB PRINC",
					:name => "Tesouro IPCA+ 2035 (NTNB Princ)",
					:expire_date => "2035-05-15",
					:buy_rate => 586.0,
					:sell_rate => 594.0,
					:buy_price => 101414.0,
					:sell_price => 99998.0,
					:index => "ipca"
				},
					:ntnb_2045 => {
					:abbreviation => "NTNB",
					:name => "Tesouro IPCA+ com Juros Semestrais 2045 (NTNB)",
					:expire_date => "2045-05-15",
					:buy_rate => nil,
					:sell_rate => 599.0,
					:buy_price => 0.0,
					:sell_price => 299390.0,
					:index => "ipca"
				},
					:ntnb_2050 => {
					:abbreviation => "NTNB",
					:name => "Tesouro IPCA+ com Juros Semestrais 2050 (NTNB)",
					:expire_date => "2050-08-15",
					:buy_rate => 584.0,
					:sell_rate => 594.0,
					:buy_price => 301430.0,
					:sell_price => 297173.0,
					:index => "ipca"
				},
					:ltn_2017 => {
					:abbreviation => "LTN",
					:name => "Tesouro Prefixado 2017 (LTN)",
					:expire_date => "2017-01-01",
					:buy_rate => nil,
					:sell_rate => 1398.0,
					:buy_price => 0.0,
					:sell_price => 95831.0,
					:index => "ipca"
				},
					:ntnf_2017 => {
					:abbreviation => "NTNF",
					:name => "Tesouro Prefixado com Juros Semestrais 2017 (NTNF)",
					:expire_date => "2017-01-01",
					:buy_rate => nil,
					:sell_rate => 1400.0,
					:buy_price => 0.0,
					:sell_price => 100503.0,
					:index => "ipca"
				},
					:ltn_2018 => {
					:abbreviation => "LTN",
					:name => "Tesouro Prefixado 2018 (LTN)",
					:expire_date => "2018-01-01",
					:buy_rate => nil,
					:sell_rate => 1264.0,
					:buy_price => 0.0,
					:sell_price => 85526.0,
					:index => "ipca"
				},
					:ltn_2019 => {
					:abbreviation => "LTN",
					:name => "Tesouro Prefixado 2019 (LTN)",
					:expire_date => "2019-01-01",
					:buy_rate => 1202.0,
					:sell_rate => 1208.0,
					:buy_price => 76974.0,
					:sell_price => 76879.0,
					:index => "ipca"
				},
					:ltn_2021 => {
					:abbreviation => "LTN",
					:name => "Tesouro Prefixado 2021 (LTN)",
					:expire_date => "2021-01-01",
					:buy_rate => nil,
					:sell_rate => 1203.0,
					:buy_price => 0.0,
					:sell_price => 61318.0,
					:index => "ipca"
				},
					:ntnf_2021 => {
					:abbreviation => "NTNF",
					:name => "Tesouro Prefixado com Juros Semestrais 2021 (NTNF)",
					:expire_date => "2021-01-01",
					:buy_rate => nil,
					:sell_rate => 1199.0,
					:buy_price => 0.0,
					:sell_price => 95595.0,
					:index => "ipca"
				},
					:ltn_2023 => {
					:abbreviation => "LTN",
					:name => "Tesouro Prefixado 2023 (LTN)",
					:expire_date => "2023-01-01",
					:buy_rate => 1205.0,
					:sell_rate => 1211.0,
					:buy_price => 48845.0,
					:sell_price => 48680.0,
					:index => "ipca"
				},
					:ntnf_2023 => {
					:abbreviation => "NTNF",
					:name => "Tesouro Prefixado com Juros Semestrais 2023 (NTNF)",
					:expire_date => "2023-01-01",
					:buy_rate => nil,
					:sell_rate => 1202.0,
					:buy_price => 0.0,
					:sell_price => 93514.0,
					:index => "ipca"
				},
					:ntnf_2025 => {
					:abbreviation => "NTNF",
					:name => "Tesouro Prefixado com Juros Semestrais 2025 (NTNF)",
					:expire_date => "2025-01-01",
					:buy_rate => nil,
					:sell_rate => 1202.0,
					:buy_price => 0.0,
					:sell_price => 91911.0,
					:index => "ipca"
				},
					:ntnf_2027 => {
					:abbreviation => "NTNF",
					:name => "Tesouro Prefixado com Juros Semestrais 2027 (NTNF)",
					:expire_date => "2027-01-01",
					:buy_rate => 1201.0,
					:sell_rate => 1207.0,
					:buy_price => 90681.0,
					:sell_price => 90373.0,
					:index => "ipca"
				},
					:lft_2017 => {
					:abbreviation => "LFT",
					:name => "Tesouro Selic 2017 (LFT)",
					:expire_date => "2017-03-07",
					:buy_rate => nil,
					:sell_rate => 1.0,
					:buy_price => 0.0,
					:sell_price => 809508.0,
					:index => "ipca"
				},
					:lft_2021 => {
					:abbreviation => "LFT",
					:name => "Tesouro Selic 2021 (LFT)",
					:expire_date => "2021-03-01",
					:buy_rate => 3.0,
					:sell_rate => 7.0,
					:buy_price => 808467.0,
					:sell_price => 807027.0,
					:index => "ipca"
				}
			}
		}

		assert_equal(expected_hash, CotacaoTesouroDireto.get)
	end
end
