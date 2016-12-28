require 'open-uri'

class Parsing
  def xml(file)
    doc = Nokogiri::XML(File.open(file)) do |config|
      config.strict.nonet
    end

  end
end
Parsing.new
