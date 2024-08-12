select * from flipcart_products
	--------------------------------------------------------------1NF---------

select  productid,productname,category,price,stockquantity,rating,brand,seller,dateadded from flipcart_products

create table Unique_Flipcart_Products as select productid,productname,category,price,
stockquantity,rating,brand,seller,dateadded from flipcart_products

---------------------------------------------------------------------2NF as product table ----------

select productid,productname,category,rating ,brand from flipcart_products

create table product as select productid,productname,category,rating ,brand from flipcart_products

---------------------------------------------seller table as 2NF------------

select productid,seller,price,stockquantity,dateadded from flipcart_products

create table seller as select productid,seller,price,stockquantity,dateadded from flipcart_products

	--------------------------------------------------------------------------------------------------------------------

select p.productid,s.seller,s.price,s.stockquantity,s.dateadded from product as p  
inner join seller as s 
on p.productid = s.productid


