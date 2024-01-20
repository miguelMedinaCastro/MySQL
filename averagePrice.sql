drop database Store;
create database Store;
use Store;

create table products (
    id int not null auto_increment,
    name varchar(150) not null,
    amount int not null,
    price float not null,
    PRIMARY KEY(id)
);

insert into products (name, amount, price) values 
    ('Two-doors wardrobe', 100, 800),
    ('Dining table', 1000, 560),
    ('Towel holder', 10000, 25.50),
    ('Computer desk', 350, 320,50),
    ('Chair', 3000, 210.64),
    ('Single bed', 750, 460);

select cast(avg(price) as decimal(10, 2)) as price from products;