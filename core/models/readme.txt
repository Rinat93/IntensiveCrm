Описание архитектуры БД:
    user - пользователи(связка с tickets)
    roles_user - роли пользователей(связка с type_tickets)
    module - Модули системы (связка с user and roles_user)
    page - страницы(связка с category_page)
    category_page - категория страниц
    contragents - контрагенты(связка с documents)
    tickets - тикеты для пользователей(Связка с documents)
    type_tickets - типы тикетов пользователей(Связка с type_documents)
    formula_calc - формулы для расчетов(связка с contragents и с documents|type_documents и с transaction)
    formula_peni - формулы для пени
    transaction - транзакции
    type_transaction - типы транзакции
    documents - документы
    type_documents - типы документов
    history - истории(Связка со всем и вся)
    log_error - истории всех ошибок(raise с подбробной информацией)
    category_history - категории истории
Описание Report(отчет) таблиц
    report
    type_report
    history_report
    logs_error