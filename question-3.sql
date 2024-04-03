/*
3) “Yazılım” veya “Donanım” birimlerinde çalışanların ad, soyad ve maaş bilgilerini listeleyen SQL sorgusunu yazınız. (Tek bir sorgu ile)
*/
SELECT 
    calisan.ad,
    calisan.soyad,
    calisan.maas
FROM calisan
INNER JOIN birim ON calisan.calisan_birim_id = birim.birim_id
WHERE birim.birim_ad IN ('Yazılım', 'Donanım');
