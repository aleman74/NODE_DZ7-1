# Загрузите образ node версии 15.14
docker pull node:15.14
docker images

# Запустите контейнер с именем first_node из образа node версии 15.14 в фоновом режиме, подключив папку data из текущей директории в /var/first/data контейнера
docker run -it -d  -v C:\WORK\Course\Нетология\Node_js\code\NODE_DZ7-1\data:/var/first/data  --name first_node node:15.14

# Запустите контейнер с именем second_node из образа node версии 15.14 в фоновом режиме, подключив папку data из текущей директории в /var/second/data контейнера
docker run -it -d  -v C:\WORK\Course\Нетология\Node_js\code\NODE_DZ7-1\data:/var/second/data  --name second_node node:15.14

# Подключитесь к контейнеру first_node с помощью exec и создайте текстовый файл любого содержания в /var/first/data
docker exec first_node node ./var/first/data/script3.js

# Добавьте еще один файл в папку data на хостовой машине

# Подключитесь к контейнеру second_node с помощью exec и получите список файлов в директории /var/second/data, выведете на экран содержимое файлов
docker exec second_node ls /var/second/data

# Остановите оба контейнера
docker stop first_node
docker stop second_node

# Удалите оба контейнера
docker rm first_node
docker rm second_node

# Удалите образ node версии 15.14
docker image rm node:15.14
