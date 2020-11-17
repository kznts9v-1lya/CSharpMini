# fp2020 Домашки

Домашки по курсу ФП 2020 оформлять **в виде пулл-реквестов к этому репо**.

В Директории `./Lambda` лежит скелет, его нужно скопипастить и исправить под свои нужды:
- переименовать нужные файлы под свой мини-язык
- пофикисить имя автора и т.п.
- ну и сделать реализацию с тестами

Для Merge Requests настроен CI, который смотрит в какой директории (проекте) произошли последние изменения, 
и именно в этой директории запускает сборку и тесты. Например, если поменялся файл `Lambda/src/Parser.ml`, то запустятся все тесты из директории проекта `Lambda`, а тесты из проекта `Java` запускаться не будут.  Имейте в виду.

###### Не удаляйте директорию Lambda. Это шаблон!