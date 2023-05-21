#DDL-create
create database stor;

create table countries(
   code int primary key ,
   name varbinary(20) unique ,
   contionent_name varbinary(20)

);

create table users(
    id int primary key ,
    full_name varbinary(20)not null ,
    email varbinary(20)unique ,
    gender char(1) check(gender='m' or 'f'),
    date_of_birth varbinary(15) not null ,
    created_at datetime not null ,
    country_code int,
    foreign key (country_code) references countries(code)
);
create table orders(
    id int primary key ,
    user_id int ,
    foreign key(user_id)references users(id),
    status varbinary(6) check (status='start'or 'finish'),
    created_at datetime not null

);

create table order_poducts(
    order_id int,
    foreign key(order_id )references orders(id),
    product_id int,
    foreign key (product_id)references products(id),
    quantity int default 0
);

create table products(
   id int primary key ,
   name varbinary(10)not null ,
   price int default 0,
   ststus varbinary(10) check ( ststus='vaild' or 'expired'),
   created_at datetime

);

insert into countries values ('1','SaudiArabia','asia');

insert into users values ('9','mayar','mayarsultan@icloud.com','f','january','june','1');

insert into orders values ('10','9','valid','10/1/2023');

insert into products values ('10','3','6');

insert into order_poducts values ('3','milk','12','valid','12/8/2023') ;

select * from countries;
select * from orders;


update countries set contionent_name='kwuit' where code=1;

select * from countries;

delete from products where id=1;
select * from products;




