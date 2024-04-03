/*
4) Maaşı en yüksek olan çalışanların ad, soyad ve maaş bilgilerini listeleyen SQL sorgusunu yazınız. (Tek bir sorgu ile)
*/

SELECT
    calisan.ad,
    calisan.soyad,
    calisan.maas
FROM calisan
ORDER BY calisan.maas DESC
LIMIT 1;
