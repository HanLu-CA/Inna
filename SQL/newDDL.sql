create table Book( 
    ISBN              VARCHAR(25),
    book              VARCHAR(50),
    author            VARCHAR(50),
    genre             VARCHAR(20),
    publisher         VARCHAR(30),
    import_price      NUMERIC(4,0),
    in_stock          NUMERIC(4,0),
    money_percentage  NUMERIC(4,2),
    introduction      VARCHAR(50),
    page_num          VARCHAR(10),
    primary key (ISBN),
    foreign key (publisher) references Publisher,
    foreign key (author, genre) references Record
);

CREATE TABLE Regested_User(
    user_ID       NUMERIC(4,0),
    user_name     VARCHAR(50),
    user_password VARCHAR(20),
    admin         BOOLEAN,     
    primary key (user_ID)
);

CREATE TABLE Check_out(
    track_num          NUMERIC(4,0),
    user_ID            NUMERIC(4,0),
    car_ID             NUMERIC(4,0),
    curr_order_place   VARCHAR(30),
    date_buy           NUMERIC(8,0),
    shipping_company   VARCHAR(20),
    shipping_address   VARCHAR(50),
    billing_address    VARCHAR(50),
    primary key (track_num),
    foreign key (user_ID) references Regested_User,
    foreign key (car_ID) references Car,
    foreign key (shipping_address, billing_address) references Address
);

CREATE TABLE Car(
    user_ID              NUMERIC(4,0),
    ISBN                 VARCHAR(25),
    car_ID               NUMERIC(4,0),
    book_num             NUMERIC(4,0),
    sell_price           NUMERIC(4,0),
    primary key (user_ID,ISBN),
    foreign key (user_ID) references Regested_User,
    foreign key (ISBN) references Book,
)

CREATE TABLE Address(
    address_ID    VARCHAR(10),
    ZIP_code        VARCHAR(6),
    user_ID         NUMERIC(4,0),
    street_address  VARCHAR(50),
    primary key (address_ID),
    foreign key (user_ID) references Regested_User,
    foreign key (ZIP_code) references Postcode
);

CREATE TABLE Postcode(
    ZIP_code        VARCHAR(6),
    province        VARCHAR(20),
    city            VARCHAR(20),
    primary key (ZIP_code),
)

CREATE TABLE Publisher(
    publisher       VARCHAR(30),
    address         VARCHAR(100),
    email           VARCHAR(30),
    phone_num       NUMERIC(14),
    bank_account    NUMERIC(20),
    primary key (publisher)
);

CREATE TABLE Record(
    record_ID         VARCHAR(4,0),
    genre_or_author   VARCHAR(20),
    money             NUMERIC(4,0),
    type              BOOLEAN,
    primary key (record_ID, genre_or_author)
);