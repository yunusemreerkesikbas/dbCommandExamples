/*
7) Maaşları “50000” ve “100000” arasında değişen çalışanların ad, soyad ve maaş bilgilerini listeleyen sorguyu yazınız. (Tek bir sorgu ile)
*/

SELECT
    calisan.ad,
    calisan.soyad,
    calisan.maas
FROM calisan
WHERE calisan.maas BETWEEN 50000 AND 100000
ORDER BY calisan.maas ASC;

