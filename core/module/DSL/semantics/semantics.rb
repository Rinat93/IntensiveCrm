
class Semantics
  # Происходит подбор необходимого модуля для запуска
  def SearchMethods(code)
    results = ""
    dicts = {'Посчитай':'Arithmetic'}
    code.each do |line|
      dicts.each do |key,methods|
        dsl_meth = line.split(' ')[0].encode("ibm866").force_encoding("utf-8")
        dsl_val = line.split(' ')[1]
        if key.to_s == dsl_meth.to_s
          results = eval("#{methods} #{dsl_val}")
        end
      end
    end
    results
  end
  def AddMethods

  end
  def Formuls

  end
  def Class

  end
  def Arithmetic(*code)
    result = 0
    code.each do |run|
      result = eval(run)
    end
    result
  end
end