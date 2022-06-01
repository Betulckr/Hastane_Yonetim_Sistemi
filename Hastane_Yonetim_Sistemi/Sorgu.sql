Use Hastane
--Select Hasta_ID,Hasta_Ad,Hasta_Soyad from TBLHastalar
/* Select komutu ile TBLHastalar tablosuna ait önümüze gelmesini istediðimiz verileri Listeledik. (1) */
--Select * From TBLDoktor
/*TBLDoktor tablomuzdaki tüm verileri listeleyen sorguyu yazdýk. (2) */
--Select * From TBLTahliller Where Tahlil_ID = 'T001'
/*TBLTahliller tablomuzdaki Tahlil_ID deðeri 5 olan kaydý listeledik. (3) */
--Select * From TBLDoktor Where Doktor_Alan = 'Kulak Burun Boðaz Hastalýklarý'
/*TLDoktor tablomuzda doktor alaný Kulak Burun Boðaz Hastalýklarý olan doktorlara ait tüm bilgileri listeleyen sorguyu yazdýk. (4) */
--Select Doktor_Ad,Doktor_Soyad,Doktor_Maas From TBLDoktor Where Doktor_Maas < 20000
/*TBLDoktor tablomuzda doktor maaþý 20000 den küçük olan doktorlarýmýzýn adýný, soyadýný ve maaþýný listeleyen sorguyu yazdýk. (5) */
--Select * From TBLDoktor Where Doktor_Pozisyon = 'Uzman Doktor' and Doktor_Maas > 25000
/*TBLDoktor tablomuzda doktor pozisyonu uzman doktor olan ve maaþý 25000 den büyük olan doktorlarýmýzý listeledik. (6) */
--Select * From TBLHastaKabul Where HastaSikayet = 'Boðaz Aðrýsý' and HastaDurum = 'Temel Seviye'
/*TBLHastaKabul tablomuzda bulunan boðaz aðrýsý þikayeti çeken hastalarýn içinde temel seviye olan hastlarý listeledik. (7) */
--Select * From TBLHastalar Where Hasta_Meslek = 'Öðrenci' or Hasta_Cinsiyet = 'Kadýn'
/*TBLHastalar tablomuzda bulunan Hastanýn mesleðini veya hastanýn kadýn olmasýný listeleyelim. (8) */
--Select * From TBLTahliller Where Durum = 'Kol Aðrýsý' or Doktor_ID = 'D006' or Sonuc = 'Yoðun Bakýmda'
/*TBLTahliller tablomuzda bulunan hastanýný durumu kol aðrýsý veya doktorun ID si 006 veya hastanýn sonucu yoðun bakýmda bilgisini veren tahlilleri listeledik. (9) */
--Update TBLHastalar Set Hasta_Tel = 056729430211 , Hasta_Yakini_Tel = 053563412521 Where Hasta_ID = 'H003'
--Select * From TBLHastalar
/*TBLHastalar tablomuzda bulunan hasta numarasýný ve hastanýn yakýnýnýn telefon numarasýný hasta ID si H003 olan hastanýnýn verilerini deðiþtirdik ve 
deðiþip deðiþmediðine bakmak için tüm hastalarý listeledik. (10) */
--Update TBLDoktor Set Doktor_Maas = Doktor_Maas + 1000 Where Doktor_Pozisyon = 'Profesör Doktor'
--Select * From TBLDoktor Where Doktor_Pozisyon = 'Profesör Doktor'
/*TBLDoktor tablomuzda Profesör Doktor olanlarýn maaþýný 1000 tl arttýrdýk ve arttýrdýðýmýz kiþileri listeledik. (11) */
--Select * From TBLHastalar Where Hasta_Ad Like '%A%'
/*Adýnýn içinde 'A' harfi geçen hastalarý listeledik. (12) */
--Select * From TBLHastalar Where Hasta_Ad Like '%AN%'
/*Adýnýn içinde 'AN' geçen hastalarýmýzý listeledik. (13) */
--Select * From TBLDoktor Where Doktor_Alan Like 'A%'
/*Alaný 'A' ile baþlayan doktorlarýmýzý listeyelen sorgumuzu yazdýk. (14) */
--Select * From TBLHastaKabul Where HastaDurum = 'Temel Seviye'
/*Durumu temel seviye olan hastalarýmýzý listeyelen sorguyu yazdýk. (15) */
--Select * From TBLHastalar Where Hasta_Adres Like '%A'
/*Adresi 'A' ile biten hastalarýmýzý listeledik. (16) */
--Select * From TBLDoktor Where Doktor_Ad Not Like 'A%'
/*Doktor adý 'A' ile baþlamayan doktor bilgilerini listeleyen sorguyu yazdýk. (17) */
--Select * From TBLHastalar Where Hasta_Meslek In('Öðretmen','Öðrenci')
/* Mesleði öðretmen veya öðrenci olan hastalarýmýzýn bilgilerini getiren sorguyu IN komutuyla yazdýk. (18) */
--Select * From TBLHastalar Where Hasta_Ad Like '%A%' Or Hasta_Adres In ('Ýstanbul/Beylikdüzü','Ýstanbul/Küçükçekmece')
/* Adýnýn içinde 'A' harfi geçen veya adresi Ýstanbul/Beylikdüzü ya da Ýstanbul/Küçükçekmece olan hastalarýmýza ait kayýtlarý listeleyen sorgumuzu yazdýk. (19) */
--Select * From TBLHastalar Where Hasta_Adres Not In ('Ýstanbul/Beylikdüzü','Ýstanbul/Beþiktaþ','Ýstanbul/Þiþli')
/*Adresi Ýstanbul/Beylikdüzü,Ýstanbul/Beþiktaþ veya Ýstanbul/Þiþli haricindeki adresleri olan hastalarýmýzýn bilgilerini listeledik. (20) */
--Update TBLDoktor Set Doktor_Maas += Doktor_Maas*0.2/100 Where Doktor_Pozisyon In ('Yardýmcý Doçent Doktor','Doçent Doktor')
--Select * From TBLDoktor
/*TBLDoktor tablomuzda bulunan kayýtlarýmýzýn Yardýmcý Doçent Doktor veya Doçent doktor olanlarýn maaþýna zam yapan sorguyu yazdýk ve tüm doktorlarý listeledik. (21) */
--Select Count(*) From TBLHastalar
/*TBLHastalar tablomuzdaki hasta sayýsýný veren sorguyu yazdýk. (22) */
--Select Count (*) From TBLHastalar Where Hasta_Medeni_Hal = 'Bekar'
/*TBLHastalar tablomuzdaki Bekar kiþilerin sayýsýný veren sorguyu yazdýk. (23) */
--Select Count(*) From TBLDoktor Where Doktor_Alan = 'Kulak Burun Boðaz Hastalýklarý' And Doktor_Cinsiyet = 'Kadýn'
/*TBLDoktor tablomuzda alaný Kulak Burun Boðaz Hastalýklarý olan ve cinsiyeti Kadýn olan doktorlarýmýzý listeledik. (24) */
--Select Sum(Doktor_Maas) From TBLDoktor
/*TBLDoktor tablomuzdaki toplam doktor maaþlarýnýn sayýsýný veren sorguyu yazdýk. (25) */
--Select Sum(Doktor_Maas) From TBLDoktor Where Doktor_Pozisyon = 'Doçent Doktor'
/*TBLDoktor tablomuzdaki pozisyonu Doçent Doktor olan doktorlarýmýzýn maaþlarýnýn toplamýný veren sorgumuzu yazdýk. (26) */
--Select AVG(Doktor_Maas) From TBLDoktor
/*TBLDoktor tablomuzdaki doktor maaþlarýnýn ortalama deðerini veren sorgumuzu yazdýk. (27) */
--Select AVG(Doktor_Maas) From TBLDoktor Where Doktor_Alan = 'Genel Cerrahi'
/*TBLDoktor tablomuzda alaný 'Genel Cerrahi' olanlarýn ortalama maaþlarýný bulan sorgumuzu yazdýk. (28) */
--Select Max(Doktor_Maas) From TBLDoktor
/*TBLDoktor tablomuzdaki en yüksek maaþ sayýsýný veren sorguyu yazdýk. (29) */
--Select Min(Doktor_Maas) From TBLDoktor
/*TBLDoktor tablomuzdaki en düþük maaþ sayýsýný veren sorguyu yazdýk. (30) */
--Select Hasta_Ad,Hasta_Soyad AS 'Hasta Soyadý' , Hasta_Yakini_Tel AS 'Hasta Yakýný Telefon Numarasý' From TBLHastalar
/*TBLHastalar tablomuzda bulunan Hasta adýný,soyadýný ve hasta yakýnýn telefon numarasý deðerlerini yazalým ve sadece hasta soyadýna ve 
hasta yakýnýn telefon numarasýna sütun isimleri verdiðimiz bir sorgu yazdýk. (31) */
--Select Doktor_Ad, Doktor_Maas *2 From TBLDoktor
/*TBLDoktor tablomuzda bulunan doktorlarýn maaþlarýnýn 2 katýný hesaplayan sorgumuzu güncelleme yapmamasý için Select ifadesi ile gerçekleþtirdik. (32) */
--UPDATE TBLHastalar Set Hasta_Gmail = 'Güncellenecek' Where Hasta_Gmail is NULL
--Select * from TBLHastalar
/*TBLHastalar tablomuzda gmaili bilinmeyen hastamýzýn gmail bilgisine 'güncellenecek' yazdýran sorguyu yazdýk ve listeledik. (33) */
--Select * From TBLHastalar Where Hasta_Gmail Is Not Null 
/*gmaili null olmayan hastalarýmýzý listeledik. (34) */
--Select Distinct(Doktor_Alan) From TBLDoktor
/*TBLDoktor tablomuzda bulunan doktorlarýmýzýn alanlarýný tekrarsýz olarak listeledik. (35) */
--Select Distinct(Doktor_Pozisyon) From TBLDoktor Where Doktor_Alan = 'Kulak Burun Boðaz Hastalýklarý'
/*Alaný 'Kulak Burun Boðaz Hastalýklarý' olan doktorlarýmýzý tekrarsýz olarak listeleyen sorguyu yazdýk. (36) */
--Select * From TBLDoktor Where Doktor_Maas Between 20000 And 30000
/*TBLDoktor tablomuzda bulunan doktor maaþlarýn 20000 ile 30000 arasýnda olan doktorlarý listeleyen sorgumuzu yazdýk. (37) */
--Select Doktor_Pozisyon, Count(*) From TBLDoktor Group By Doktor_Pozisyon
/*TBLDoktor tablomuzda bulunan doktolarýmýzýn pozisyonlarýna göre gruplandýran sorgumuzu yazdýk. (38) */
--Select Hasta_Meslek,Count(*) From TBLHastalar Group By Hasta_Meslek 
/*TBLHastalar tablomuzda bulunan meslekleri sayýlarýna göre gruplandýran sorguyu yazdýk. (39) */
--Select Doktor_Alan,Sum(Doktor_Maas) From TBLDoktor Group By Doktor_Alan 
/*TBLDoktor tablomuzda bulunan alanlara göre doktor maaþýný gruplandýralým. (40) */
--Select Doktor_Alan,Count(*) As 'Doktor Alaný' From TBLDoktor Group By Doktor_Alan
/*TBLDoktor tablomuzda bulunan doktorlarýn alanlarýna göre gruplandýrdýðýmýz sorgumuzu yazdýk. (41) */
--Select * From TBLDoktor Order By Doktor_Pozisyon
/*TBLDoktor tablomuzda bulunan doktor pozisyonlarý adýna göre sýralayan sorgumuzu yazdýk. (42) */
--Select * From TBLHastalar Order By Hasta_Ad Desc
/*TBLHastalar tablomuzda hasta isimlerini Z -> A formatýnda sýralayan soegumuzu yazdýk. (43) */
--Select AVG(DATEPART(YEAR,GETDATE()) - DATEPART (YEAR,Hasta_Dogum_Tarih)) As 'Tüm Hastalarýn Yaþ Ortalamasý' From TBLHastalar;
/*Tüm hastalarýnýn yaþýnýn ortalamasýný bulan sorgumuzu yazdýk.*/
--Select AVG(DATEPART(YEAR,GETDATE())-DATEPART(YEAR,Hasta_Dogum_Tarih)) AS 'Kadýn Müþterilerin Yaþ Ortalamasý' From TBLHastalar where Hasta_Cinsiyet = 'Kadýn';
/*Tüm hasta kadýnlarýn yaþ ortalamasýný bulan sorgumuzu yazdýk.*/
--Select AVG(DATEPART(YEAR,GETDATE())-DATEPART(YEAR,Hasta_Dogum_Tarih)) AS 'Erkek Müþterilerin Yaþ Ortalamasý' From TBLHastalar where Hasta_Cinsiyet = 'Erkek';
/*Tüm hasta erkeklerin yaþ ortalamasýný bulan sorgumuzu yazdýk.*/
--Select Doktor_Ad , Doktor_Soyad , Hasta_Ad , Hasta_Soyad from TBLHastalar inner join (TBLDoktor inner join TBLMuayeneler on TBLMuayeneler.Doktor_ID = TBLDoktor.Doktor_ID)
--on TBLHastalar.Hasta_ID= TBLMuayeneler.Hasta_ID
/*Doktor adýný, soyadýný doktor tablomuzdan getirip, hasta adýný ve soyadýný da hastalar tablomuzdan ortak olan deðerleri getirip tablolarý inner join ile birleþtirdik.
bunlarý ID' lere göre yaptýk kýsaca hangi doktor hangi hastaya bakýyor sorumuzun cevabý bu sorgumuzda*/
--select Hasta_Ad , Hasta_Soyad , RandevuTarih from TBLHastalar inner join (TBLRandevu inner join  TBLHastaKabul on TBLRandevu.Hasta_Kabul_ID = TBLHastaKabul.Hasta_Kabul_ID)
--on TBLHastalar.Hasta_ID=TBLHastaKabul.Hasta_ID
/* Hastalarýmýzýn randevu tarihini iki tabloyu birleþtirerek adlarýný, soyadlarýný ve randevu tarihlerini gösteren sorgumuzu yazdýk.*/
--select Hasta_Ad, Hasta_Soyad , Sonuc from TBLHastalar inner join (TBLTahliller inner join TBLHastaKabul on TBLTahliller.Hasta_Kabul_ID = TBLHastaKabul.Hasta_Kabul_ID)
--on TBLHastalar.Hasta_ID=TBLHastaKabul.Hasta_ID order by Hasta_Ad
/*Hastalarýmýzýn sonuçlarýný iki tabloyu birleþtirerek adlarýný,soyadlarýný ve sonuçlarýný gösteren sorgumuzu yazdýk.*/
--select Doktor_Ad , Sum(Doktor_Maas) as 'Maaþ'  From TBLDoktor group by Doktor_Ad order by Doktor_Ad
/*Doktorlarýmýzýn adlarýný A'dan Z'ye sýralayýp, yanlarýnda maaþlarýný gösteren group by ve order by'ý ayný anda kullandýðýmýz sorgumuzu yazdýk.*/

--Select Hasta_ID,
--Hasta_Ad,
--Hasta_Soyad,
--Hasta_Dogum_Tarih,Hasta_Dogum_Tarih=(DATEPART(YEAR,GETDATE())-DATEPART(YEAR,Hasta_Dogum_Tarih)) FROM TBLHastalar Where Hasta_Dogum_Tarih=(Select MIN(Hasta_Dogum_Tarih) FROM TBLHastalar)
/*En yaþlý hastanýn adýný, soyadýný ve doðum tarihini yaþýyla getiren analizimizi yazdýk.*/

--Select Hasta_ID,
--Hasta_Ad,
--Hasta_Soyad,
--Hasta_Dogum_Tarih,Hasta_Dogum_Tarih=(DATEPART(YEAR,GETDATE())-DATEPART(YEAR,Hasta_Dogum_Tarih)) FROM TBLHastalar Where Hasta_Dogum_Tarih=(Select MAX(Hasta_Dogum_Tarih) FROM TBLHastalar)
/*En genç hastanýn adýný,soyadýný ve doðum tarihini yaþýyla getiren analizimizi yazdýk.*/


