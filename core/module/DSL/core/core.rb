require "find"
require '../../../../core/module/DSL/semantics/semantics'
class Core
  def initialize
    $semantics = Semantics.new
  end
  # Данный метод считывает все файлы в projects или конкретный 1 файл
  def file_read(files)
    File.readlines(files).each do |line|
      puts $semantics.SearchMethods([line])
    end
  end
  # Поиск файла в директории
  def findfiles(dir,name)
    result = ""
    Find.find(dir) do |path|
      result = path if File.basename(path) == name
    end
    result
  end
end
filepath = 'C:/Users/Rinat/RubymineProjects/OpenRuCRM/core/module/DSL/projects/'
name = "primer2.dsl"
cores = Core.new
files = cores.findfiles(filepath,name)
cores.file_read(files)
