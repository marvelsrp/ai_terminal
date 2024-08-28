# GIGACHAT_terminal

1. Скачайте файлы Sphere.sh, в этой же папке создайте файл Request.sh.
2. Залогиниться в giga.chat в браузере (use Chrome)
3. Открыть "Инструмент разработчика" (Mac os Alt+CMD+I) в Chrome.
4. Найти вкладку request с данным POST запросом - https://giga.chat/api/gigachat/giga-back-web/api/v0/sessions/request - скопируйте ее в формате curl с добавлением "-w "%{time_total}\n" -s"
5. Вставьте данные в файл Request.sh
6. Запустите Sphere.sh
7. Введите запрос
