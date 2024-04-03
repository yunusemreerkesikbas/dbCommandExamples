/*
9) Ünvanı “Yönetici” ve “Müdür” olan çalışanların ad, soyad ve ünvanlarını listeleyen sorguyu yazınız. (Tek bir sorgu ile)
*/

SELECT
    calisan.ad,
    calisan.soyad,
    unvan.unvan_calisan
FROM calisan
INNER JOIN unvan ON calisan.calisan_id = unvan.unvan_calisan_id
WHERE unvan.unvan_calisan IN ('Yönetici', 'Müdür');
