-- aggregate function

SELECT AVG(cost) AS average_price  FROM items;

SELECT SUM(cost) FROM items;

SELECT MAX(cost) AS most_expensive_product FROM items;

SELECT MIN(cost) AS cheapest_product_price FROM items;

SELECT COUNT(*) AS total_product FROM items;

SELECT COUNT(pk_product_id) AS total_product FROM items;

SELECT UPPER(product_name) FROM items;

SELECT LOWER(product_name) FROM items;

SELECT product_name, LENGTH(product_name) FROM items;

SELECT SUBSTRING(product_name,2,4) AS extracted_string FROM items;

SELECT ROUND(cost) FROM items;
SELECT now ();

SELECT date ,count (*)FROM items group by date ;

SELECT date ,count (*)FROM items group by date having date<'2022-10-02';

insert into bills values 
(1,'ak','1234567890','2020-03-22'),
(2,'dq','9876543210','2020-04-23'),
(3,'jd','6789012345','2020-02-12');

create table bill_items(
    pk_item_id serial primary key,
    fk_product_id int,
    item_price int,
    item_quandity int,
    fk_bill_id int,
    foreign key (fk_product_id)references items (pk_product_id) on delete cascade on update cascade,
    foreign key (fk_bill_id)references bills (pk_bill_id) on delete cascade on update cascade

);
insert into bill_items values
(1,4,10,5,1),
(2,4,100,4,2),
(3,4,76,7,2);

SELECT pk_bill_id,bill_date,customer_name,SUM(item_price*item_quandity)AS total_bill
FROM bill_items inner join bills on bill_items.fk_bill_id=bills.pk_bill_id
group by pk_bill_id ;


create table stock(
    pk_stock_id serial primary key,
    fk_product_id int,
    quandity int,
    foreign key (fk_product_id) references items(pk_product_id) on delete cascade on update cascade
);
insert into stock values
(1,1,200),
(2,2,400),
(3,3,366),
SELECT product_name,quandity FROM items inner  join stock on items.pk_product_id = fk_product_id;

insert into category (category_name,description)values 
('sports','sports items'),
('electronic','electrics');

SELECT product_name,category_name FROM items inner  join category on items.fk_category_id = category.pk_product_id;

SELECT pk_category_id FROM category where category_name='grocery';