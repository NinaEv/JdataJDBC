create table customers
(
    id           serial primary key,
    name         varchar(255) not null,
    surname      varchar(255) not null,
    age          int check ( age > 0 ) check ( age < 110 ),
    phone_number varchar(20)
);

create table orders
(
    id           serial primary key,
    date         datetime default now(),
    customer_id  int references customers (id),
    product_name varchar(255) not null,
    amount       int check ( amount > 0 )
);

create index c_name on customers (name);
