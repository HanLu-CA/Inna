create table Book( 
    ISBN              VARCHAR(25),
    book              VARCHAR(50),
    author            VARCHAR(50),
    genre             VARCHAR(20),
    publisher         VARCHAR(30),
    import_price      NUMERIC(4,0),
    retail_price      NUMERIC(4,0),
    in_stock          NUMERIC(4,0),
    share_percentage  NUMERIC(4,2),
    introduction      TEXT(50),
    page_num          VARCHAR(10),
    primary key (ISBN),
    foreign key (publisher) references Publisher
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
    curr_order_place   VARCHAR(30),
    shipping_company   VARCHAR(20),
    shipping_address   VARCHAR(50),
    billing_address    VARCHAR(50),
    primary key (track_num),
    foreign key (user_ID) references Regested_User,
    foreign key (shipping_address, billing_address) references Address
);

CREATE TABLE Purchase_item(
    ISBN                 VARCHAR(25),
    track_num            NUMERIC(4,0),
    book_num             NUMERIC(4,0),
    sell_price           NUMERIC(4,0),
    primary key (ISBN),
    foreign key (track_num) references Check_out,
    foreign key (ISBN) references Book,
)

CREATE TABLE Address(
    address_ID    VARCHAR(10),
    ZIP_code        VARCHAR(6),
    street_address  VARCHAR(50),
    primary key (address_ID),
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

CREATE TABLE Sale_expense(
    sale_ID           VARCHAR(4,0),
    amount            NUMERIC(4,0),
    date              DATE,
    primary key (sale_ID)
);