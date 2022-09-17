# Загрузите образ busybox последней версии
docker pull busybox
docker images

# Запустите новый контейнер busybox с командой ping сайта netology.ru, и количеством пингов 7, поименуйте контейнер pinger
docker run -it --name pinger busybox ping netology.ru -c 7

# Выведите на список всех контейнеров - запущенных и остановленных
docker ps -a

# Выведите на экран логи контейнера с именем pinger
docker logs pinger

# Запустите второй раз контейнера с именем pinger
docker start pinger

# Выведите на список всех контейнеров - запущенных и остановленных
docker ps -a

# Выведите на экран логи контейнера с именем pinger
docker logs pinger

# Определите по логам общее количество запусков команды ping и какое общее количество отправленых запросов

# Удалите контейнер с именем pinger
docker rm pinger

# Удалите образ busybox
docker image rm busybox