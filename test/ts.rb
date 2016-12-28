# Метапрограммирование
a = "
  def z
    puts 3
  end
"
eval(a)
puts z

class Sond
    attr_accessor :title, :length
end

obj = Sond.new
obj.title=5
obj.length=35
# puts Time.now.to_datetime - start