drop database Clients_Address;
create database Clients_Address;
use Clients_Address;

create table customers (
    id int not null auto_increment,
    name varchar(255) not null,
    street varchar(255) not null,
    city varchar(255) not null,
    state char(2) not null,
    credit_limit float not null,
    PRIMARY KEY(id)
);

insert into customers (name, street, city, state, credit_limit) values
    ('Pedro Augusto da Rocha', 'Rua Pedro Carlos Hoffman', 'Porto Alegre', 'RS', 700.00),
    ('Antonio Carlos Mamel', 'Av. Pinheiros', 'Belo Horizonte', 'MG', 3500.50),
    ('Luiza Augusta Mhor', 'Rua Salto Grande', 'Niteroi', 'RJ', 4000.00),
    ('Jane Ester', 'Av 7 de setembro', 'Erechim', 'RS', 800.00),
    ('Marcos Antônio dos Santos', 'Av Farrapos', 'Porto Alegre', 'RS', 4250.25);

select name, city from customers where city = 'Porto Alegre';