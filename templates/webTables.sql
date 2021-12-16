create table Store_Book(
    book              VARCHAR(50),
    author            VARCHAR(50),
    ISBN              VARCHAR(25),
    genre             VARCHAR(20),
    publisher         VARCHAR(30),
    in_price          INT(4),
    sale_time_period  NUMERIC(8,0),
    num_sold          INT(4),
    num_hold          INT(4),
    primary key (ISBN, sale_time_period),
);

CREATE TABLE User_Book(
    book        VARCHAR(50),
    author      VARCHAR(50),
    ISBN        VARCHAR(25),
    genre       VARCHAR(20),
    publisher   VARCHAR(30),
    num_page    NUMERIC(4,0),
    out_price   INT(4), 
    primary key (ISBN),
);

CREATE TABLE Regested_User(
    user_ID       NUMERIC(4,0),
    user_name     VARCHAR(50),
    primary key (user_ID),
);

CREATE TABLE Check_Out(
    User_ID            NUMERIC(4,0),
    ISBN               VARCHAR(25),
    order_num          VARCHAR(20),
    curr_order_place   VARCHAR(30),
    date               VARCHAR(8),
    shipping_company   VARCHAR(20),
    reciver            VARCHAR(50),
    primary key (user_ID, ISBN, order_num),
);

CREATE TABLE Address(
    address_type    VARCHAR(10),
    province        VARCHAR(20),
    city            VARCHAR(20),
    street_address  VARCHAR(50),
    ZIP_code        VARCHAR(6),
    User_ID         NUMERIC(4,0),
    reciver         VARCHAR(50),
    primary key (user_ID, address_type, reciver),
);

CREATE TABLE Publisher(
    publisher       VARCHAR(30),
    address         VARCHAR(100),
    email           VARCHAR(30),
    phone_num       NUMERIC(14),
    bank_account    NUMERIC(20),
    primary key (publisher),
);

CREATE TABLE Sales_Expenditures(
    genre_or_author   VARCHAR(20),
    sales             INT(4),
    expenditures      INT(4),
    primary key (genre_or_author, sales, expenditures),
);

CREATE TABLE Money_Trans(
    publisher         VARCHAR(30),
    ISBN              VARCHAR(25),
    money_percentage  NUMERIC(4,2),
    primary key (money_percentage),
);