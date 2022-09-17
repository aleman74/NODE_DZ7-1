const path = require('path');
const fs = require('fs');

// Путь к файлу
// const FOLDER_NAME = 'data';
const FILE_NAME = 'file1.txt';

// const file_path = path.join(__dirname, FOLDER_NAME, FILE_NAME);
const file_path = path.join(__dirname, FILE_NAME);

// Делаем запись в файл
fs.appendFile(file_path, 'Привет!' + '\n', (err) => {
    if (err)
        console.log('Ошибка при записи в файл: ' + err);
});
