require 'test_helper'

describe TesouroDireto::Price do
	describe "sync with opened market" do
		before do
			api_url ||= "http://www3.tesouro.gov.br/tesouro_direto/consulta_titulos_novosite/consultatitulos.asp"
			fixture_opened_market ||= File.join(File.expand_path("../..",__FILE__), "fixtures/opened_market.html.erb")
			stub_request(:get, api_url).to_return(:body => File.read(fixture_opened_market))
			@obj ||= TesouroDireto::Price.sync
			@indexes = ['ipca', 'selic', 'igpm', 'prefixado']
		end

		it "must return a hash" do
			@obj.must_be_kind_of Hash
		end

		it "must have a valid updated dates" do
			@obj[:updated_at].wont_be_nil
			@obj[:updated_at].must_be_kind_of DateTime
		end

		it "must have valid titles" do
			@obj[:titles].count.must_be :>=, 1
			@obj[:titles].must_be_kind_of Hash
		end

		it "must have titles with valid abbreviated names" do
			@obj[:titles].each do |key, value|
				@obj[:titles][key][:abbreviation].wont_be_nil
				@obj[:titles][key][:abbreviation].must_be_kind_of String
				@obj[:titles][key][:abbreviation].length.must_be :>, 0

			end
		end

		it "must have titles with valid names" do
			@obj[:titles].each do |key, value|
				@obj[:titles][key][:name].wont_be_nil
				@obj[:titles][key][:name].must_be_kind_of String
				@obj[:titles][key][:name].length.must_be :>, 0
			end
		end

		it "must have titles with valid expire dates" do
			@obj[:titles].each do |key, value|
				@obj[:titles][key][:expire_date].wont_be_nil
				@obj[:titles][key][:expire_date].must_be_kind_of Date
			end
		end

		it "must have titles with valid buy rates" do
			@obj[:titles].each do |key, value|
				if !@obj[:titles][key][:buy_rate].nil?
					@obj[:titles][key][:buy_rate].must_be_kind_of Float
					@obj[:titles][key][:buy_rate].must_be :>, 0
				end
			end
		end

		it "must have titles with valid sell rates" do
			@obj[:titles].each do |key, value|
				if !@obj[:titles][key][:sell_rate].nil?
					@obj[:titles][key][:sell_rate].must_be_kind_of Float
					@obj[:titles][key][:sell_rate].must_be :>, 0
				end
			end
		end

		it "must have titles with valid buy prices" do
			@obj[:titles].each do |key, value|
				if !@obj[:titles][key][:buy_price].nil?
					@obj[:titles][key][:buy_price].must_be_kind_of Float
					@obj[:titles][key][:buy_price].must_be :>, 0
				end
			end
		end

		it "must have titles with valid sell prices" do
			@obj[:titles].each do |key, value|
				if !@obj[:titles][key][:sell_price].nil?
					@obj[:titles][key][:sell_price].must_be_kind_of Float
					@obj[:titles][key][:sell_price].must_be :>, 0
				end
			end
		end

		it "must have titles with valid indexes" do
			@obj[:titles].each do |key, value|
				@obj[:titles][key][:index].wont_be_nil
				@obj[:titles][key][:index].must_be_kind_of String
				@indexes.must_include @obj[:titles][key][:index]
			end
		end
	end
end

#segunda feira 17:30
#quinta feira talvez
#terça dia 20/09 08:00