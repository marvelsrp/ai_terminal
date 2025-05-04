# GIGACHAT_terminal

1. Скачайте файлы Sphere.sh, в этой же папке создайте файл Request.txt.
2. Залогиниться в giga.chat в браузере (use Chrome). Найти чат, написать в чат "Привет"
3. Открыть "Инструмент разработчика" (Mac os Alt+CMD+I) в Chrome.
4. Найти вкладку request с данным POST запросом - https://giga.chat/api/gigachat/giga-back-web/api/v0/sessions/request - скопируйте ее в формате curl.
5. Вставьте данные в файл Request.txt.
6. Замените в файле Request.txt `"text":"Привет"` на `"text":"$YOU_REQUEST"`.
7. Удалите в файле Request.txt в `data-raw` ключ `"sessionId"`.
8. Разрешите запуск файлов выполнив `chmod +x Sphere.sh` и `chmod +x ai`.
9. Теперь можете запустить Sphere.sh или прописать путь к директории. 
10. Введите запрос к AI

#### Еще можно прописать в переменную окружения PATH, чтобы запускать из любой папки
```
export PATH=$PATH:/you/path/to/ai-in-terminal/ 
```
в ~/.bash_rc или ~/.zshrc
запускать командой `ai`

Если буду вопросы | mail: sergey.d@attacking.ru | tg: @pari_tet
