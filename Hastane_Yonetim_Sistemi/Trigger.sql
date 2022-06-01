--use Hastane

--CREATE TRIGGER ToplamDoktor
--ON TBLDoktor
--AFTER INSERT 
--AS 
--begin
--	SELECT COUNT(*) AS 'Toplam Doktor Sayýsý' FROM  TBLDoktor D WHERE D.Hastane_ID = 'H001'
--	SELECT * FROM TBLDoktor
--end

--Insert into TBLDoktor Values('D051','Uzman Doktor','Aðýz Diþ ve Çene Cerrahisi','Berk','Boro','Erkek','1976-01-07',31122565749,5346933273,25000,'H001')



--CREATE TRIGGER ToplamHasta
--ON TBLHastalar
--AFTER INSERT 
--AS 
--begin
--	SELECT COUNT(*) AS 'Toplam Hasta Sayýsý' FROM  TBLHastalar 
--	SELECT * FROM TBLHastalar
--end

--Insert Into TBLHastalar Values('H071','Aybüke','Kolbastý','Kadýn',12345668902,'Bekar','Ýstanbul/Beþiktaþ',55523312626,55174336191,'aybukekolbasti@gmail.com','Öðrenci','1996-05-03 07:11:11.551','2021-11-11 10:01:05','Ýstanbul','Beþiktaþ','0Rh+')