/* 1) Yukarıda bulunan diyagramın veritabanını SQL Server ortamında oluşturunuz. Veritabanını oluştururken tablolar arasındaki ilişkilere dikkat
ediniz, özniteliklerin veri tiplerini doğru tanımlayınız, tablolarda bulunan Primary Key (birim_id ve calisan_id) ve Foreign Key (calisan_birim_id,
unvan_calisan_id ve ikramiye_calisan_id) özniteliklerinin tablolar arasındaki ilişkilerde önemli olduğunu unutmayınız. (Veritabanı ve tabloları
SQL sorguları ile yapılmalıdır.):*/

CREATE TABLE Birim (
    birim_id INT PRIMARY KEY,
    birim_ad VARCHAR(25) NOT NULL
);

CREATE TABLE Calisan (
    calisan_id INT PRIMARY KEY,
    ad VARCHAR(25) NOT NULL,
    soyad VARCHAR(25) NOT NULL,
    maas INT NOT NULL,
    katilmaTarihi DATETIME NOT NULL,
    calisan_birim_id INT,
   
    FOREIGN KEY (calisan_birim_id) REFERENCES Birim (birim_id)

);
CREATE TABLE Ikramiye (
    ikramiye_calisan_id INT PRIMARY KEY,
    ikramiye_ucret INT NOT NULL,
    ikramiye_tarih DATETIME NOT NULL
    FOREIGN KEY (ikramiye_calisan_id) REFERENCES Calisan (calisan_id)
);
CREATE TABLE Unvan (
    unvan_calisan_id INT PRIMARY KEY,
    unvan_calisan VARCHAR(25) NOT NULL,
    unvan_tarihi DATETIME NOT NULL
);

ALTER TABLE Calisan
ADD CONSTRAINT FK_Calisan_Birim FOREIGN KEY (birim_id)
REFERENCES Birim (birim_id);

ALTER TABLE Calisan
ADD CONSTRAINT FK_Calisan_Ikramiye FOREIGN KEY (ikramiye_calisan_id)
REFERENCES Ikramiye (calisan_id);
