--liquibase formatted sql
/* https://www.liquibase.org/documentation/sql_format.html */

--changeset Mayank:1

Create database test1;
use test1;

create table person (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset Raj:2
create table company (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset other.dev:3
alter table person add column country varchar(2)

