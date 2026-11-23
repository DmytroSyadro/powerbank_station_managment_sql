USE rental_powerbank;

-- The "Client" table
CREATE TABLE IF NOT EXISTS Клієнти (
    КодКлієнта INT PRIMARY KEY AUTO_INCREMENT,
    ПІБ VARCHAR(100) NOT NULL,
    Телефон VARCHAR(20) NOT NULL UNIQUE,
    ЕлектроннаПошта VARCHAR(100) NOT NULL UNIQUE,
    ДатаРеєстрації DATE NOT NULL
);

-- The "Tarrifs" table
CREATE TABLE IF NOT EXISTS Тарифи ( 
    КодТарифу INT PRIMARY KEY AUTO_INCREMENT,
    Назва VARCHAR(100) NOT NULL, 
    ТермінДії INT NOT NULL, 
    Вартість DECIMAL(10, 2) NOT NULL
);

-- The "Station" table
CREATE TABLE IF NOT EXISTS Станції (
    КодСтанції INT PRIMARY KEY AUTO_INCREMENT,
    Назва VARCHAR(100) NOT NULL,
    Адреса VARCHAR(255) NOT NULL,
    КількістьСлотів INT NOT NULL
);

-- The "Client's tarrifs" table
CREATE TABLE IF NOT EXISTS ТарифиКлієнтів (
    КодЗапису INT PRIMARY KEY AUTO_INCREMENT,
    КодКлієнта INT NOT NULL,
    КодТарифу INT NOT NULL,
    ДатаПочатку DATE NOT NULL,
    ДатаЗакінчення DATE NOT NULL,
    FOREIGN KEY (КодКлієнта) REFERENCES Клієнти(КодКлієнта),
    FOREIGN KEY (КодТарифу) REFERENCES Тарифи(КодТарифу)
);

-- The "Powerbank" table 
CREATE TABLE IF NOT EXISTS Павербанки (
    КодПавербанка INT PRIMARY KEY AUTO_INCREMENT, 
    Модель VARCHAR(100) NOT NULL,
    Ємність INT NOT NULL,
    ЦінаГодина DECIMAL(10, 2) NOT NULL,
    КодСтанції INT NOT NULL,
    FOREIGN KEY (КодСтанції) REFERENCES Станції(КодСтанції)
);

-- The "Rent" table
CREATE TABLE IF NOT EXISTS Оренда ( 
    КодОренди INT PRIMARY KEY AUTO_INCREMENT, 
    КодКлієнта INT NOT NULL,
    КодПавербанка INT NOT NULL,
    ДатаПочатку DATETIME NOT NULL,
    ДатаЗакінчення DATETIME,
    Вартість DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (КодКлієнта) REFERENCES Клієнти(КодКлієнта),
    FOREIGN KEY (КодПавербанка) REFERENCES Павербанки(КодПавербанка)
);

