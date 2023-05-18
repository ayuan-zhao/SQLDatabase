insert into login_user (email, password) values('xyz@gmail.com','XYZ123abc')

SELECT name, sql FROM sqlite_master WHERE type='table';

sqlite> CREATE TABLE teachers (
   Id INTEGER PRIMARY KEY,
   Name TEXT NOT NULL,
   --CHECK加一些限制，比如输入年龄小于22的，就会 Error: CHECK constraint failed: Age > 22
   Age INTEGER CHECK(Age > 22),
   Country TEXT DEFAULT "USA"
   );

--查看下建成功了没
.tables


INSERT INTO Teachers VALUES(1,'Alice',25,'CHN');
INSERT INTO Teachers VALUES(2,'Bob',25,'BRA');
INSERT INTO Teachers(Id,Name,Age,Country) VALUES(3,'Charls',33,'USA');
INSERT INTO Teachers(Name,Age) VALUES('Jhon',43);
SELECT * FROM Teachers;


--改update,全部，UPDATE，SET WHERE 按照条件改
UPDATE Teachers SET Country='China';

UPDATE Teachers SET Country='America' WHERE Id=3;

SELECT * FROM Teachers;

UPDATE Teachers SET Country='India' WHERE Age<30; 

SELECT * FROM Teachers;

            
--删除数据 DELETE FROM 表 【WHERE 条件语句】
--如果设定 WHERE 条件子句，则删除符合条件的数据记录；如果没有设定条件语句，则删除所有记录



DELETE FROM Teachers WHERE Age>30;


--删全部       
 DELETE FROM Teachers;

 SELECT * FROM Teachers;
 
 --查看，只查Age
 SELECT Age FROM teachers;
SELECT * FROM teachers WHERE Age > 24;

SELECT Name, Age FROM teachers WHERE Age > 24;



--VARCHAR 是一个数据类型，用于表示可变长度的字符串variable length string data
--Allocate storage space for the actual string content
--"PRIMARY KEY" is a unique identifier for each record in a database table, ensuring data integrity 数据完整性by prohibiting duplicate values. It's often used as a linking point in relationships between tables and contributes to improved query performance through automatic indexing by the database system.
CREATE TABLE User (
    ID INT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50),
    email VARCHAR(100),
    registration_date DATE
);

CREATE TABLE Order (
    order_ID INT PRIMARY KEY,
    user_ID INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    order_status VARCHAR(50),
    FOREIGN KEY (user_ID) REFERENCES User(ID)
);
