create table Store_Book(
    book              VARCHAR(50),
    author            VARCHAR(50),
    ISBN              VARCHAR(25),
    genre             VARCHAR(20),
    publisher         VARCHAR(30),
    in_price          NUMERIC(4,0),
    sale_time_period  NUMERIC(6,0),
    num_sold          NUMERIC(4,0),
    num_hold          NUMERIC(4,0),
    primary key (book, ISBN, author, genre, publisher, sale_time_period),
    foreign key (publisher) references Publisher,
    foreign key (publisher, author, genre) references Sales_Expenditures
);

CREATE TABLE User_Book(
    book        VARCHAR(50),
    author      VARCHAR(50),
    ISBN        VARCHAR(25),
    genre       VARCHAR(20),
    publisher   VARCHAR(30),
    num_page    NUMERIC(4,0),
    out_price   NUMERIC(4,0), 
    primary key (ISBN),
    foreign key (book, ISBN, author, genre, publisher) references Store_Book
);

CREATE TABLE Regested_User(
    user_ID       NUMERIC(4,0),
    user_name     VARCHAR(50),
    primary key (user_ID)
);

CREATE TABLE Check_Out(
    user_ID            NUMERIC(4,0),
    ISBN               VARCHAR(25),
    order_num          VARCHAR(20),
    out_price          NUMERIC(4,0),
    numofbooks         NUMERIC(4,0),
    curr_order_place   VARCHAR(30),
    date               NUMERIC(8,0),
    shipping_company   VARCHAR(20),
    receiver           VARCHAR(50),
    primary key (user_ID, ISBN, order_num),
    foreign key (user_ID) references Regested_User,
    foreign key (ISBN, out_price) references User_Book
);

CREATE TABLE Address(
    address_type    VARCHAR(10),
    province        VARCHAR(20),
    city            VARCHAR(20),
    street_address  VARCHAR(50),
    ZIP_code        VARCHAR(6),
    User_ID         NUMERIC(4,0),
    primary key (user_ID, address_type),
    foreign key (user_ID) references Regested_User
);

CREATE TABLE Publisher(
    publisher       VARCHAR(30),
    address         VARCHAR(100),
    email           VARCHAR(30),
    phone_num       NUMERIC(14),
    bank_account    NUMERIC(20),
    primary key (publisher)
);

CREATE TABLE Sales_Expenditures(
    genre_or_author   VARCHAR(20),
    sales             NUMERIC(4,0),
    expenditures      NUMERIC(4,0),
    primary key (genre_or_author, sales, expenditures)
);

CREATE TABLE Money_Trans(
    publisher         VARCHAR(30),
    ISBN              VARCHAR(25),
    money_percentage  NUMERIC(4,2),
    primary key (money_percentage),
    foreign key (publisher) references Publisher,
    foreign key (ISBN) references Store_Book
);
