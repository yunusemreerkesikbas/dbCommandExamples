/*
8) İkramiye hakkına sahip çalışanlara ait ad, soyad, birim, unvan ve ikramiye ücreti bilgilerini listeleyen sorguyu yazınız. (Tek bir sorgu ile)
*/

SELECT
    calisan.ad,
    calisan.soyad,
    birim.birim_ad,
    unvan.unvan_calisan,
    ikramiye.ikramiye_ucret
FROM calisan
INNER JOIN birim ON calisan.calisan_birim_id = birim.birim_id
INNER JOIN unvan ON calisan.calisan_id = unvan.unvan_calisan_id
INNER JOIN ikramiye ON calisan.calisan_id = ikramiye.ikramiye_calisan_id;
