/*
5) Birimlerin her birinde kaç adet çalışan olduğunu ve birimlerin isimlerini listeleyen sorguyu yazınız. (Tek bir sorgu ile) (Örneğin; x biriminde 3
çalışan var gibi düşünebilirsiniz.) (Gruplamalı sorgu ile)
*/
SELECT
    birim.birim_ad,
    COUNT(calisan.calisan_id) AS calisan_sayisi
FROM calisan
INNER JOIN birim ON calisan.birim_id = birim.birim_id
GROUP BY birim.birim_ad
ORDER BY calisan_sayisi DESC;
