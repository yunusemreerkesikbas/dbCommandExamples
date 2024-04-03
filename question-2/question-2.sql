/*
2) Yukarıdaki diyagramın veritabanını oluşturduktan sonra tablolara SQL sorguları ile veri girişi yapınız. Girilecek örnek veriler ve veriler
girildikten sonraki tabloların son hali aşağıdaki görselde bulunmaktadır.
*/


INSERT INTO Unvan (unvan_calisan_id,unvan_calisan,unvan_tarihi)
VALUES (1, 'Yonetici','2021-01-01'),
        (2, 'Personel','2021-01-01'),
        (8, 'Personel','2021-01-01'),
        (5, 'Müdür','2021-01-01'),
        (4, 'Yönetici Yardimcisi','2021-01-01'),
        (7, 'Personel','2021-01-01'),
        (6, 'Takim Lideri','2021-01-01'),
        (3, 'Takim Lideri','2021-01-01');

INSERT INTO Ikramiye (ikramiye_calisan_id, ikramiye_ucret, ikramiye_tarih)
VALUES
    (1, 3000, '2021-01-01'),
    (2, 5000, '2022-01-01'),
    (3, 1000, '2024-01-01'),
    (5, 4000, '2021-01-01'),
    (6, 7000, '2023-01-01');

INSERT INTO Calisanlar (calisan_id, ad, soyad, maas, katilmaTarihi, birim_id)
VALUES
    (1, 'Ismail', 'Iseri', 10000, '2023-01-01', 1),
    (2, 'Hami', 'Satilmis', 100, '2023-01-01', 1),
    (3, 'Durmus', 'Sahin', 5000, '2024-05-01', 1),
    (4, 'Kagan', 'Yazar', 4000, '2022-01-01', 1),
    (5, 'Meryem', 'Soysaldi', 40000, '2023-01-07', 1),
    (6, 'Duygu', 'Aksehir', 30000, '2023-01-01', 1),
    (7, 'Kubra', 'Seyhan', 10000, '2024-01-01', 1),
    (8, 'Gulcan', 'Yildiz', 90000, '2021-01-01', 1);

INSERT INTO Birim (birim_id, birim_ad)
VALUES
    (1, 'Yazilim'),
    (2, 'Donanim'),
    (3, 'Guvenlik');