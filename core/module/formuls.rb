'''
  Расчет по формулам, пример ее реализации:
     dicts = {a:5,b:6,c:3}
     "a+b+c*a".formuls(dicts)
  и произойдет чудо, расчитает по той формуле которую вы описали.
  В планах написать несколько парсеров для обработки входящих значении т.к. eval опасная и непредсказуемая вещь.
  I love Metaprogramming
'''

class String
  def formuls(dicts)
    finals = ""
    dicts.each {|key,value|
      finals = self.gsub!(/[#{key}]/) {value}
    }
    begin
      eval(finals.to_s)
    rescue TypeError
      "Вводите только цифры"
    rescue SyntaxError
      "Ввели неккоректное значение"
    end
  end
end


# a = {a:5, b:3}
# # puts "(a+b)*a".formuls(a)
# formuls=['a*2+b-a*2', 'a*3-b']
# formuls.each{|n| puts n.formuls(a)}