/*
10) Her bir birimde en yüksek maaş alan çalışanların ad, soyad ve maaş bilgilerini listeleyen sorguyu yazınız. (Tek bir sorgu ile)
*/

SELECT
    calisan.ad,
    calisan.soyad,
    calisan.maas
FROM calisan
INNER JOIN birim ON calisan.calisan_birim_id = birim.birim_id
WHERE calisan.maas IN (
    SELECT MAX(maas)
    FROM calisan
    GROUP BY calisan.calisan_birim_id
);
