require "cotacao_tesouro_direto/version"
require "net/http"
require "nokogiri"
require "date"

module TesouroDireto
	class Price
		def self.sync
			self.parse_response(self.get_data_from_website)
		end

		private
		API_URL = "http://www3.tesouro.gov.br/tesouro_direto/consulta_titulos_novosite/consultatitulos.asp"
		MAIN_XPATH = "//table/tr/td/table/tr/td/center/table/tr/"
		
		#Request data from the server
		def self.get_data_from_website
			url = URI(API_URL)
			req = Net::HTTP::Get.new(url.to_s)
			res = Net::HTTP.start(url.host, url.port) {|http| http.request(req)}
			res.body
		end

		#Parse response body with Nokogiri
		def self.parse_response(body)
			cols_amount = 6
			k = 0
			lines = []

			doc = Nokogiri::HTML(body)
			doc.remove_empty_lines!
			doc.xpath("//comment()").remove
			doc.xpath("#{MAIN_XPATH}td[@class='listing1']").remove

			@@updated_at = DateTime.strptime(doc.xpath("#{MAIN_XPATH}td[@class='listing2']/b").first.text, "%d-%m-%Y %H:%M:%S")
			doc.xpath("#{MAIN_XPATH}td[@class='listing2']").remove
			(doc.xpath("#{MAIN_XPATH}td[@class!='listing1']").count / cols_amount).times do |i|
				line = []
				cols_amount.times do
					line << doc.xpath("#{MAIN_XPATH}td[@class!='listing1']")[k].text
					k +=1
				end
				lines << self.format_response(line)
			end

			self.to_hash(lines)
		end

		#Format parsed response
		def self.format_response(data)
			data[1] = Date.strptime(data[1], "%d/%m/%Y")
			data[2].strip == "-" ? data[2] = nil : data[2] = data[2].to_delocalized_decimal.to_f
			data[3].strip == "-" ? data[3] = nil : data[3] = data[3].to_delocalized_decimal.to_f
			data[4].strip == "-" ? data[4] = nil : data[4] = data[4].to_delocalized_decimal.gsub("R$ ", "").to_f
			data[5].strip == "-" ? data[5] = nil : data[5] = data[5].to_delocalized_decimal.gsub("R$ ", "").to_f
			data << data[0].match(/\b(IGPM)|(IPCA)|(SELIC)|(Prefixado)\b/i).to_s
			data.unshift data[0].match(/\(([A-Z\s])*\)/i)[0].gsub("(", "").gsub(")", "")
		end

		#Convert formated response to hash
		def self.to_hash(data)
			response_hash = {}
			response_hash[:updated_at] = DateTime.parse(@@updated_at.to_s)
			response_hash[:titles] = {}

			data.each do |field|
				response_hash[:titles]["#{field[0].downcase.gsub(/\s/, "_")}_#{field[2].year}".to_sym] = {
					abbreviation: field[0].upcase,
					name: field[1],
					expire_date: field[2],
					buy_rate: field[3],
					sell_rate: field[4],
					buy_price: field[5],
					sell_price: field[6],
					index: field[7].downcase
				}
			end

			return response_hash
		end
	end
end

class Nokogiri::XML::Document
	def remove_empty_lines!
		self.xpath("//text()").each { |text| text.content = text.content.gsub(/\n(\s*\n)+/,"\n") }; self
	end
end

class String
	def to_delocalized_decimal
		delimiter = "."
		separator = ","
		self.gsub(/[#{delimiter}#{separator}]/, delimiter: '', separator: '.')
	end
end