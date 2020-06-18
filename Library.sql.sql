create table Books(
Book_ID int primary key,
Title varchar(250),
Price real,
Author varchar(250),
Pub_ID int ,
)
create table Publisher(
Publisher_ID int primary key,
Name varchar(250),
Address varchar(250)
)

create table Member(
Member_ID int primary key ,
Name varchar(250),
Address varchar(250),
)

--Select Statement
  select  *  from    Books
  Select   * From Member 
  Select   * From Publisher 
  select Name,Address from Member where Member_ID=3
  select   * from Books  where Author like 'm%'
  select  Author from Books
  Select  Name From  Member Where Address  = 'Alex'
  Select  title  From books Where Pub_ID=7
  Select Title From Books Where price = 25 and Author like '%m'
  Select title From books Where title like '%w'
  select Price from Books 
  Select   title,Price  From Books Order by price
  select Title from Books where price=40 or Author='Marcel'
  Select   *  From   Books Order by  Price DESC
  Select  count(*)  From Books
  Select  count(*)  From Member
  Select  count(*)  From Publisher
  Select  author    From Books
  Select  Title     From Books Where Pub_ID=1
  select Address    from Member   where Name='muller'

  --Sub Query Statement

  select title , Price
    from Books  where price =(select MAX(price) from Books )


  Select Title, Price 
    from Books   where price>(select price from Books where title=' In Search of Lost Time')

--Count and Group functions

  select count(Book_ID)
    from Books  Group by price having count(Book_ID)>=1

   select count(*) 
 from Member 
 group by Member_ID

 --Join statement 

 select Title ,Name
from Books b join Publisher p
on b.Book_ID=p.Publisher_ID


select Name , price 
from Publisher p join Books b
on p.Publisher_ID=b.Book_ID

--Insert Statement
	insert into Books values (8,'Alayam',60,'Taha Hussin',3)

	insert into Member values (6,'Smith','USA')

	insert into Publisher values(8,'Ghandy','Tokyo')

	insert into Books values (9,'kalila w dmna',38,'jake',2)

	insert into Member values (7,'Chris','Egypt')




--Update Statement

	update Books set price=90 where Book_ID=6

	update Publisher set Address='Kilo21' where Publisher_ID=1

	update Member set Name ='Omar' where Member_ID=2

	update Books set Author='June' where Book_ID=9

	update Member set Address='Macca' where Member_ID=1




--Delete Statement

	delete from Books where Book_ID=9

	delete from Member where Member_ID=6

	delete from Publisher where Publisher_ID=8

	delete from Books where Book_ID=5

	delete from Member where Member_ID=5






















