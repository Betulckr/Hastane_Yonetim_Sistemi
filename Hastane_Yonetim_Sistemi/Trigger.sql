--use Hastane

--CREATE TRIGGER ToplamDoktor
--ON TBLDoktor
--AFTER INSERT 
--AS 
--begin
--	SELECT COUNT(*) AS 'Toplam Doktor Say�s�' FROM  TBLDoktor D WHERE D.Hastane_ID = 'H001'
--	SELECT * FROM TBLDoktor
--end

--Insert into TBLDoktor Values('D051','Uzman Doktor','A��z Di� ve �ene Cerrahisi','Berk','Boro','Erkek','1976-01-07',31122565749,5346933273,25000,'H001')



--CREATE TRIGGER ToplamHasta
--ON TBLHastalar
--AFTER INSERT 
--AS 
--begin
--	SELECT COUNT(*) AS 'Toplam Hasta Say�s�' FROM  TBLHastalar 
--	SELECT * FROM TBLHastalar
--end

--Insert Into TBLHastalar Values('H071','Ayb�ke','Kolbast�','Kad�n',12345668902,'Bekar','�stanbul/Be�ikta�',55523312626,55174336191,'aybukekolbasti@gmail.com','��renci','1996-05-03 07:11:11.551','2021-11-11 10:01:05','�stanbul','Be�ikta�','0Rh+')