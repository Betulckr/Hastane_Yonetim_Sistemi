Use Hastane
--Select Hasta_ID,Hasta_Ad,Hasta_Soyad from TBLHastalar
/* Select komutu ile TBLHastalar tablosuna ait �n�m�ze gelmesini istedi�imiz verileri Listeledik. (1) */
--Select * From TBLDoktor
/*TBLDoktor tablomuzdaki t�m verileri listeleyen sorguyu yazd�k. (2) */
--Select * From TBLTahliller Where Tahlil_ID = 'T001'
/*TBLTahliller tablomuzdaki Tahlil_ID de�eri 5 olan kayd� listeledik. (3) */
--Select * From TBLDoktor Where Doktor_Alan = 'Kulak Burun Bo�az Hastal�klar�'
/*TLDoktor tablomuzda doktor alan� Kulak Burun Bo�az Hastal�klar� olan doktorlara ait t�m bilgileri listeleyen sorguyu yazd�k. (4) */
--Select Doktor_Ad,Doktor_Soyad,Doktor_Maas From TBLDoktor Where Doktor_Maas < 20000
/*TBLDoktor tablomuzda doktor maa�� 20000 den k���k olan doktorlar�m�z�n ad�n�, soyad�n� ve maa��n� listeleyen sorguyu yazd�k. (5) */
--Select * From TBLDoktor Where Doktor_Pozisyon = 'Uzman Doktor' and Doktor_Maas > 25000
/*TBLDoktor tablomuzda doktor pozisyonu uzman doktor olan ve maa�� 25000 den b�y�k olan doktorlar�m�z� listeledik. (6) */
--Select * From TBLHastaKabul Where HastaSikayet = 'Bo�az A�r�s�' and HastaDurum = 'Temel Seviye'
/*TBLHastaKabul tablomuzda bulunan bo�az a�r�s� �ikayeti �eken hastalar�n i�inde temel seviye olan hastlar� listeledik. (7) */
--Select * From TBLHastalar Where Hasta_Meslek = '��renci' or Hasta_Cinsiyet = 'Kad�n'
/*TBLHastalar tablomuzda bulunan Hastan�n mesle�ini veya hastan�n kad�n olmas�n� listeleyelim. (8) */
--Select * From TBLTahliller Where Durum = 'Kol A�r�s�' or Doktor_ID = 'D006' or Sonuc = 'Yo�un Bak�mda'
/*TBLTahliller tablomuzda bulunan hastan�n� durumu kol a�r�s� veya doktorun ID si 006 veya hastan�n sonucu yo�un bak�mda bilgisini veren tahlilleri listeledik. (9) */
--Update TBLHastalar Set Hasta_Tel = 056729430211 , Hasta_Yakini_Tel = 053563412521 Where Hasta_ID = 'H003'
--Select * From TBLHastalar
/*TBLHastalar tablomuzda bulunan hasta numaras�n� ve hastan�n yak�n�n�n telefon numaras�n� hasta ID si H003 olan hastan�n�n verilerini de�i�tirdik ve 
de�i�ip de�i�medi�ine bakmak i�in t�m hastalar� listeledik. (10) */
--Update TBLDoktor Set Doktor_Maas = Doktor_Maas + 1000 Where Doktor_Pozisyon = 'Profes�r Doktor'
--Select * From TBLDoktor Where Doktor_Pozisyon = 'Profes�r Doktor'
/*TBLDoktor tablomuzda Profes�r Doktor olanlar�n maa��n� 1000 tl artt�rd�k ve artt�rd���m�z ki�ileri listeledik. (11) */
--Select * From TBLHastalar Where Hasta_Ad Like '%A%'
/*Ad�n�n i�inde 'A' harfi ge�en hastalar� listeledik. (12) */
--Select * From TBLHastalar Where Hasta_Ad Like '%AN%'
/*Ad�n�n i�inde 'AN' ge�en hastalar�m�z� listeledik. (13) */
--Select * From TBLDoktor Where Doktor_Alan Like 'A%'
/*Alan� 'A' ile ba�layan doktorlar�m�z� listeyelen sorgumuzu yazd�k. (14) */
--Select * From TBLHastaKabul Where HastaDurum = 'Temel Seviye'
/*Durumu temel seviye olan hastalar�m�z� listeyelen sorguyu yazd�k. (15) */
--Select * From TBLHastalar Where Hasta_Adres Like '%A'
/*Adresi 'A' ile biten hastalar�m�z� listeledik. (16) */
--Select * From TBLDoktor Where Doktor_Ad Not Like 'A%'
/*Doktor ad� 'A' ile ba�lamayan doktor bilgilerini listeleyen sorguyu yazd�k. (17) */
--Select * From TBLHastalar Where Hasta_Meslek In('��retmen','��renci')
/* Mesle�i ��retmen veya ��renci olan hastalar�m�z�n bilgilerini getiren sorguyu IN komutuyla yazd�k. (18) */
--Select * From TBLHastalar Where Hasta_Ad Like '%A%' Or Hasta_Adres In ('�stanbul/Beylikd�z�','�stanbul/K���k�ekmece')
/* Ad�n�n i�inde 'A' harfi ge�en veya adresi �stanbul/Beylikd�z� ya da �stanbul/K���k�ekmece olan hastalar�m�za ait kay�tlar� listeleyen sorgumuzu yazd�k. (19) */
--Select * From TBLHastalar Where Hasta_Adres Not In ('�stanbul/Beylikd�z�','�stanbul/Be�ikta�','�stanbul/�i�li')
/*Adresi �stanbul/Beylikd�z�,�stanbul/Be�ikta� veya �stanbul/�i�li haricindeki adresleri olan hastalar�m�z�n bilgilerini listeledik. (20) */
--Update TBLDoktor Set Doktor_Maas += Doktor_Maas*0.2/100 Where Doktor_Pozisyon In ('Yard�mc� Do�ent Doktor','Do�ent Doktor')
--Select * From TBLDoktor
/*TBLDoktor tablomuzda bulunan kay�tlar�m�z�n Yard�mc� Do�ent Doktor veya Do�ent doktor olanlar�n maa��na zam yapan sorguyu yazd�k ve t�m doktorlar� listeledik. (21) */
--Select Count(*) From TBLHastalar
/*TBLHastalar tablomuzdaki hasta say�s�n� veren sorguyu yazd�k. (22) */
--Select Count (*) From TBLHastalar Where Hasta_Medeni_Hal = 'Bekar'
/*TBLHastalar tablomuzdaki Bekar ki�ilerin say�s�n� veren sorguyu yazd�k. (23) */
--Select Count(*) From TBLDoktor Where Doktor_Alan = 'Kulak Burun Bo�az Hastal�klar�' And Doktor_Cinsiyet = 'Kad�n'
/*TBLDoktor tablomuzda alan� Kulak Burun Bo�az Hastal�klar� olan ve cinsiyeti Kad�n olan doktorlar�m�z� listeledik. (24) */
--Select Sum(Doktor_Maas) From TBLDoktor
/*TBLDoktor tablomuzdaki toplam doktor maa�lar�n�n say�s�n� veren sorguyu yazd�k. (25) */
--Select Sum(Doktor_Maas) From TBLDoktor Where Doktor_Pozisyon = 'Do�ent Doktor'
/*TBLDoktor tablomuzdaki pozisyonu Do�ent Doktor olan doktorlar�m�z�n maa�lar�n�n toplam�n� veren sorgumuzu yazd�k. (26) */
--Select AVG(Doktor_Maas) From TBLDoktor
/*TBLDoktor tablomuzdaki doktor maa�lar�n�n ortalama de�erini veren sorgumuzu yazd�k. (27) */
--Select AVG(Doktor_Maas) From TBLDoktor Where Doktor_Alan = 'Genel Cerrahi'
/*TBLDoktor tablomuzda alan� 'Genel Cerrahi' olanlar�n ortalama maa�lar�n� bulan sorgumuzu yazd�k. (28) */
--Select Max(Doktor_Maas) From TBLDoktor
/*TBLDoktor tablomuzdaki en y�ksek maa� say�s�n� veren sorguyu yazd�k. (29) */
--Select Min(Doktor_Maas) From TBLDoktor
/*TBLDoktor tablomuzdaki en d���k maa� say�s�n� veren sorguyu yazd�k. (30) */
--Select Hasta_Ad,Hasta_Soyad AS 'Hasta Soyad�' , Hasta_Yakini_Tel AS 'Hasta Yak�n� Telefon Numaras�' From TBLHastalar
/*TBLHastalar tablomuzda bulunan Hasta ad�n�,soyad�n� ve hasta yak�n�n telefon numaras� de�erlerini yazal�m ve sadece hasta soyad�na ve 
hasta yak�n�n telefon numaras�na s�tun isimleri verdi�imiz bir sorgu yazd�k. (31) */
--Select Doktor_Ad, Doktor_Maas *2 From TBLDoktor
/*TBLDoktor tablomuzda bulunan doktorlar�n maa�lar�n�n 2 kat�n� hesaplayan sorgumuzu g�ncelleme yapmamas� i�in Select ifadesi ile ger�ekle�tirdik. (32) */
--UPDATE TBLHastalar Set Hasta_Gmail = 'G�ncellenecek' Where Hasta_Gmail is NULL
--Select * from TBLHastalar
/*TBLHastalar tablomuzda gmaili bilinmeyen hastam�z�n gmail bilgisine 'g�ncellenecek' yazd�ran sorguyu yazd�k ve listeledik. (33) */
--Select * From TBLHastalar Where Hasta_Gmail Is Not Null 
/*gmaili null olmayan hastalar�m�z� listeledik. (34) */
--Select Distinct(Doktor_Alan) From TBLDoktor
/*TBLDoktor tablomuzda bulunan doktorlar�m�z�n alanlar�n� tekrars�z olarak listeledik. (35) */
--Select Distinct(Doktor_Pozisyon) From TBLDoktor Where Doktor_Alan = 'Kulak Burun Bo�az Hastal�klar�'
/*Alan� 'Kulak Burun Bo�az Hastal�klar�' olan doktorlar�m�z� tekrars�z olarak listeleyen sorguyu yazd�k. (36) */
--Select * From TBLDoktor Where Doktor_Maas Between 20000 And 30000
/*TBLDoktor tablomuzda bulunan doktor maa�lar�n 20000 ile 30000 aras�nda olan doktorlar� listeleyen sorgumuzu yazd�k. (37) */
--Select Doktor_Pozisyon, Count(*) From TBLDoktor Group By Doktor_Pozisyon
/*TBLDoktor tablomuzda bulunan doktolar�m�z�n pozisyonlar�na g�re grupland�ran sorgumuzu yazd�k. (38) */
--Select Hasta_Meslek,Count(*) From TBLHastalar Group By Hasta_Meslek 
/*TBLHastalar tablomuzda bulunan meslekleri say�lar�na g�re grupland�ran sorguyu yazd�k. (39) */
--Select Doktor_Alan,Sum(Doktor_Maas) From TBLDoktor Group By Doktor_Alan 
/*TBLDoktor tablomuzda bulunan alanlara g�re doktor maa��n� grupland�ral�m. (40) */
--Select Doktor_Alan,Count(*) As 'Doktor Alan�' From TBLDoktor Group By Doktor_Alan
/*TBLDoktor tablomuzda bulunan doktorlar�n alanlar�na g�re grupland�rd���m�z sorgumuzu yazd�k. (41) */
--Select * From TBLDoktor Order By Doktor_Pozisyon
/*TBLDoktor tablomuzda bulunan doktor pozisyonlar� ad�na g�re s�ralayan sorgumuzu yazd�k. (42) */
--Select * From TBLHastalar Order By Hasta_Ad Desc
/*TBLHastalar tablomuzda hasta isimlerini Z -> A format�nda s�ralayan soegumuzu yazd�k. (43) */
--Select AVG(DATEPART(YEAR,GETDATE()) - DATEPART (YEAR,Hasta_Dogum_Tarih)) As 'T�m Hastalar�n Ya� Ortalamas�' From TBLHastalar;
/*T�m hastalar�n�n ya��n�n ortalamas�n� bulan sorgumuzu yazd�k.*/
--Select AVG(DATEPART(YEAR,GETDATE())-DATEPART(YEAR,Hasta_Dogum_Tarih)) AS 'Kad�n M��terilerin Ya� Ortalamas�' From TBLHastalar where Hasta_Cinsiyet = 'Kad�n';
/*T�m hasta kad�nlar�n ya� ortalamas�n� bulan sorgumuzu yazd�k.*/
--Select AVG(DATEPART(YEAR,GETDATE())-DATEPART(YEAR,Hasta_Dogum_Tarih)) AS 'Erkek M��terilerin Ya� Ortalamas�' From TBLHastalar where Hasta_Cinsiyet = 'Erkek';
/*T�m hasta erkeklerin ya� ortalamas�n� bulan sorgumuzu yazd�k.*/
--Select Doktor_Ad , Doktor_Soyad , Hasta_Ad , Hasta_Soyad from TBLHastalar inner join (TBLDoktor inner join TBLMuayeneler on TBLMuayeneler.Doktor_ID = TBLDoktor.Doktor_ID)
--on TBLHastalar.Hasta_ID= TBLMuayeneler.Hasta_ID
/*Doktor ad�n�, soyad�n� doktor tablomuzdan getirip, hasta ad�n� ve soyad�n� da hastalar tablomuzdan ortak olan de�erleri getirip tablolar� inner join ile birle�tirdik.
bunlar� ID' lere g�re yapt�k k�saca hangi doktor hangi hastaya bak�yor sorumuzun cevab� bu sorgumuzda*/
--select Hasta_Ad , Hasta_Soyad , RandevuTarih from TBLHastalar inner join (TBLRandevu inner join  TBLHastaKabul on TBLRandevu.Hasta_Kabul_ID = TBLHastaKabul.Hasta_Kabul_ID)
--on TBLHastalar.Hasta_ID=TBLHastaKabul.Hasta_ID
/* Hastalar�m�z�n randevu tarihini iki tabloyu birle�tirerek adlar�n�, soyadlar�n� ve randevu tarihlerini g�steren sorgumuzu yazd�k.*/
--select Hasta_Ad, Hasta_Soyad , Sonuc from TBLHastalar inner join (TBLTahliller inner join TBLHastaKabul on TBLTahliller.Hasta_Kabul_ID = TBLHastaKabul.Hasta_Kabul_ID)
--on TBLHastalar.Hasta_ID=TBLHastaKabul.Hasta_ID order by Hasta_Ad
/*Hastalar�m�z�n sonu�lar�n� iki tabloyu birle�tirerek adlar�n�,soyadlar�n� ve sonu�lar�n� g�steren sorgumuzu yazd�k.*/
--select Doktor_Ad , Sum(Doktor_Maas) as 'Maa�'  From TBLDoktor group by Doktor_Ad order by Doktor_Ad
/*Doktorlar�m�z�n adlar�n� A'dan Z'ye s�ralay�p, yanlar�nda maa�lar�n� g�steren group by ve order by'� ayn� anda kulland���m�z sorgumuzu yazd�k.*/

--Select Hasta_ID,
--Hasta_Ad,
--Hasta_Soyad,
--Hasta_Dogum_Tarih,Hasta_Dogum_Tarih=(DATEPART(YEAR,GETDATE())-DATEPART(YEAR,Hasta_Dogum_Tarih)) FROM TBLHastalar Where Hasta_Dogum_Tarih=(Select MIN(Hasta_Dogum_Tarih) FROM TBLHastalar)
/*En ya�l� hastan�n ad�n�, soyad�n� ve do�um tarihini ya��yla getiren analizimizi yazd�k.*/

--Select Hasta_ID,
--Hasta_Ad,
--Hasta_Soyad,
--Hasta_Dogum_Tarih,Hasta_Dogum_Tarih=(DATEPART(YEAR,GETDATE())-DATEPART(YEAR,Hasta_Dogum_Tarih)) FROM TBLHastalar Where Hasta_Dogum_Tarih=(Select MAX(Hasta_Dogum_Tarih) FROM TBLHastalar)
/*En gen� hastan�n ad�n�,soyad�n� ve do�um tarihini ya��yla getiren analizimizi yazd�k.*/


