--Select
--ANSII
Select ContactName Adi, CompanyName SirketAdi, City Sehir from Customers    -- *tüm kolonları niteler

Select * from Customers where City = 'Berlin'

Select * from Products where CategoryID=1 or categoryId=3
Select * from Products where CategoryID=1 and UnitPrice>=10

select * from Products where CategoryID=1 order by UnitPrice desc    --Asc=Ascending (artan), Desc=Descending (azalan)

Select count(*) Adet from Products where CategoryID=2     --2 numaralı kategoride kaç tane ürün olduğunun sonucunu verir

--Hangi kategoride kaç farklı ürünümüz var?
select categoryId, count(*) from Products group by CategoryID

--Bana sayısı belli bir değerin altında olan kategorileri listele
select categoryId, count(*) from Products where UnitPrice>20
group by CategoryID having count(*)<10


select Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName
from Products inner join Categories --Inner join sadece 2 tabloda da eşleşen kısımları getirir
on Products.CategoryID = Categories.CategoryID     --DTO in C# -> Data Transformation Object -> Kabaca bütün class'lar için ayrı ayrı yaptığımız klasörleme muhabbeti gibi düşünülebilir
where Products.UnitPrice>10

select * from Products p left join [Order Details] od     --Left join ise solda olup sağda olmayan ürünleri de getirmeye yarar. Right join de tam tersi
on p.ProductID = od.ProductID 
