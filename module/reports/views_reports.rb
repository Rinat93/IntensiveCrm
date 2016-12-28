# СТРАТЕГИЯ
class Report

  attr_reader :title, :text
  # Является вызываемым объектом
  attr_accessor :formatter

  def initialize(formatter)
    @title = 'Monthly Report'
    @text = ['Things are going', 'really, really well.']
    @formatter = formatter
  end

  def output_report
    @formatter.output_report(self)
  end

end
# Абстрактный класс
class Formatter

  def output_report(title, text)
    raise 'Abstract method called'
  end

end
# Вывести в HTML формате
class HTMLFormatter < Formatter

  def output_report(context)
    p('<html>')
    p(' <head>')
    p(" <title>#{context.title}</title>")
    p(' </head>')
    p(' <body>')
    context.text.each do |line|
      p(" <p>#{line}</p>")
    end
    p(' </body>')
    p('</html>')
  end

end
# Вывести как xml документ
class XmlFormatter < Formatter

  def output_report(context)
    p('<?xml version="1.0" encoding="UTF-8"?>')
    p('<note>')
    p("<title>#{context.title}<title>")
    p("<body>#{context.text.join(' ')}<body>")
    p('</note>')
  end

end
# Вывести в обычном тексте
class PlainTextFormatter < Formatter

  def output_report(context)
    p("***** #{context.title} *****")
    context.text.each do |line|
      p(line)
    end
  end

end

# report = Report.new(HTMLFormatter.new)
# report.formatter = XmlFormatter.new
# report.output_report