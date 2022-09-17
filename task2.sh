# Загрузите образ node версии 15.14
docker pull node:15.14
docker images

# Запустите контейнер node в интерактивном режиме подключения терминала, поименуйте его mynode, передайте две переменные среды NAME=<ваше имя> и SURNAME=<ваша фамилия>
docker run -it --rm --env NAME=Алексей --env SURNAME=Манчинский -v C:\WORK\Course\Нетология\Node_js\code\NODE_DZ7-1:/mydata  --name mynode node:15.14

# В интерактивной среде выполнения node выполните скрипт, который выведет на экран приветсвтие: Привет, <ваше имя> <ваша фамилия>!, эти данные должны быть получены из переменных среды
docker exec mynode node ./mydata/script2.js

# Остановите контейнер
docker stop mynode

# Удалите образ node версии 15.14
docker image rm node:15.14