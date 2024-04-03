/*
6) Birden fazla çalışana ait olan unvanların isimlerini ve o unvan altında çalışanların sayısını listeleyen sorguyu yazınız. (Tek bir sorgu ile)
*/

SELECT
    unvan.unvan_calisan,
    COUNT(calisan.calisan_id) AS calisan_sayisi
FROM calisan
INNER JOIN unvan ON calisan.calisan_id = unvan.unvan_calisan_id
GROUP BY unvan.unvan_calisan
HAVING COUNT(calisan.calisan_id) > 1
ORDER BY unvan.unvan_calisan ASC;
