--todo -- --- --INSERT  Statement -- -- -- -- -- -- -- -- -- -- -- 

insert into address_details VALUES
(1,'coconut street','bengaluru','karnatka','india'),
(2,'hulimauv street','bengaluru','karnatka','india'),
(3,'rayarmatha','dharwad','karnatka','india');


insert into school VALUES
(11,'KEB','SSLC',1),
(12,'CSI','SSLC',2),
(13,'DSCE','VTU',3);


insert into staff values
(101,12,'virat','kohli',35,'04/11/1989','m',3),
(102,11,'rohit','sharm',38,to_date('30/04/1987' , 'dd/mm/yyyy'),'m',3);


INSERT INTO data_type_1 VALUES
(11,FALSE, 'AT','Abhimanyu kulkarni','bengaluru'),
(12,TRUE, 'TR','Arjun','Bijapur'),
(14,FALSE, 'EG','Druv','Bidar');

INSERT INTO data_type_1 (ismarried,class_section,full_name,city)VALUES
(TRUE, 'XI','Raj','Mysuru'),
(TRUE, 'QL','Vishnu','Chikmagaluru');                 --?Here student it updates automatically and serially

insert into tables VALUES(1,'asdfsd','F');

--todo -- --- --UPDATE  Statement -- -- -- -- -- -- -- -- -- -- -- 
UPDATE school
SET board = 'CBSE' , address_id = 2
WHERE school_id = 11;

--todo -- --- --DELETE  Statement -- -- -- -- -- -- -- -- -- -- -- 

DELETE FROM data_type_1;

DELETE FROM data_type_1 WHERE student_id = 14;

