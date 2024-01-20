drop database Supplier;
create database Supplier;
use Supplier;

create table providers (
    id_pro int not null auto_increment,
    name varchar(255) not null,
    street varchar(255) not null,
    city varchar(255) not null,
    state char(2) not null,
    PRIMARY KEY(id_pro)
);

create table merchandise (
    id_mer int not null auto_increment,
    name_mer varchar(255) not null,
    amount int not null,
    price int not null,
    id_pro int not null,
    PRIMARY KEY(id_mer),
    FOREIGN KEY(id_pro) REFERENCES providers (id_pro)
);

insert into providers (name, street, city, state) values
    ('Ajax SA', 'Presidente Castelo Branco', 'Porto Alegre', 'RS'),
    ('Sansul SA', 'Av Brasil', 'Rio de Janeiro', 'RJ'),
    ('South Chairs', 'Av Moinho', 'Santa Maria', 'RS'),
    ('Elon Electro', 'Apolo', 'São Paulo', 'SP'),
    ('Mike Electro', 'Pedro da Cunha', 'Curitiba', 'PR');

insert into merchandise (name_mer, amount, price, id_pro) values 
    ('Blue Chair', 30, 300.00, 5),
    ('Red Chair', 50, 2150.00, 1),
    ('Disney Wardrobe', 400, 829.50, 4),
    ('Blue Toaster', 20, 9.90, 3),
    ('Solar Panel', 30, 3000.25, 4);

select name_mer, name from merchandise inner join providers on providers.id_pro = merchandise.id_pro where id_mer = 2;
