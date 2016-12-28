require 'data_mapper'
# Сие чудо должно быть расшираемым в реальном времени, реализация "добавление нового поля в настройках" системы
class Documents
  include DataMapper::Resource
  property :id, Serial #Идентификатор
  property :name, String #не более 50 символов
  property :xml, Text
  property :type, Integer
end
