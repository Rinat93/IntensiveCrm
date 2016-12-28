require 'data_mapper'

set :database, {postgres=>["name","pass","host"], mongodb=>["name","pass","host"], mssql=>["name","pass","host"]}
set :public_directory, './public'
module Database
  # Коннект к основной БД
  def connect
    DataMapper.setup(:default, ENV['DATABASE_URL'] || 'sqlite:./db/base.db') #подключение и путь к бд
    DataMapper.finalize #Проверка моделей
    DataMapper.auto_upgrade!
  end
  # Коннект к Report БД
  def connect_report

  end
  # Режим тестирования
  def testing
    $DEBUG = TRUE
    $LOG_ERR = TRUE
  end
  # Режим продакшена
  def production
    $DEBUG = FALSE
    $LOG_ERR = FALSE
  end
end
