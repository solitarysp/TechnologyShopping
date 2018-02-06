
CREATE DATABASE TechnologyShopping;
USE TechnologyShopping;
CREATE TABLE administrator(
  _id INTEGER PRIMARY KEY auto_increment,
  _email VARCHAR(200) NOT NULL UNIQUE,
  _user VARCHAR(200) NULL UNIQUE,
  _name NVARCHAR(200) NULL,
  _enabled tinyint(1) default 1,
  authority varchar(30) default N'ROLE_ADMIN',
  _password VARCHAR(200) NOT NULL
);
CREATE TABLE customer(
  _id INTEGER PRIMARY KEY auto_increment,
  _email VARCHAR(200) NOT NULL UNIQUE,
  _user VARCHAR(200) NULL UNIQUE,
  _password VARCHAR(200) NULL,
  _name NVARCHAR(200) NOT NULL,
  _enabled tinyint(1) default 1,
  authority varchar(30) default N'ROLE_USER'
);
create  table log_admin(
  _id INTEGER PRIMARY KEY auto_increment,
  administrator_id INTEGER,
  FOREIGN KEY(administrator_id) REFERENCES administrator(_id),
  date_action DATETIME DEFAULT current_timestamp,
  ip_address varchar(20),
  _content text NULL
);

CREATE TABLE customer_address(
  _id INTEGER PRIMARY KEY auto_increment,
  _adddress_full NVARCHAR(250) NOT NULL,
  _email VARCHAR(200) ,
  _phone NVARCHAR(255) NULL,
  _company NVARCHAR(255) NULL,
  _zipe_code NVARCHAR(100) NULL,
  _nation NVARCHAR(100) NULL,
  _city NVARCHAR(100)NULL,
  _district NVARCHAR(100)NULL,
  _id_customer integer ,
  FOREIGN KEY(_id_customer) REFERENCES customer(_id),
  _name NVARCHAR(200) NOT NULL
);

/* Sửa kiểu hot, mới, sale là id cố định, tự nhập 1-New,2-Hot,3-Sale*/
CREATE TABLE category(
  _id INTEGER PRIMARY KEY auto_increment,
  _name NVARCHAR(255) NOT NULL,
  _description TEXT NULL,
  value FLOAT DEFAULT '0'
);

CREATE TABLE brand(
  _id INTEGER PRIMARY KEY auto_increment ,
  _name NVARCHAR(255) NOT NULL,
  _description TEXT NULL
);

CREATE TABLE product_type(
  _id INTEGER PRIMARY KEY auto_increment,
  _name NVARCHAR(200) NOT NULL,
  _description TEXT NULL
);


/*Not null cho tất cả các trường trong product*/

CREATE TABLE product(
  _id VARCHAR(30) PRIMARY KEY  NOT NULL,
  _name NVARCHAR(200) NOT NULL,
  _IMG NVARCHAR(250) NOT NULL,
  _price FLOAT  NOT NULL CHECK (_price >=0), /*Giá gốc*/
  _repository INTEGER NOT NULL DEFAULT 0,
  _weight FLOAT NULL,
  _content text NULL,
  _date DATETIME NULL DEFAULT CURRENT_TIMESTAMP ,
  _year_of_creation INTEGER NOT NULL,
  _id_brand INTEGER  NULL ,
  FOREIGN KEY (_id_brand) REFERENCES brand(_id),
  _type INTEGER  NULL,
  FOREIGN KEY (_type) REFERENCES product_type(_id)
);
/*Thêm bảng giảm giá
GO
CREATE TABLE Sale(
_id VARCHAR(30) PRIMARY KEY NOT NULL,
_content FLOAT CHECK([_content]>=0) null
)*/
/*Thêm trường _title trong review */
CREATE TABLE review(
  _id INTEGER PRIMARY KEY auto_increment,
  _date DATETIME  DEFAULT current_timestamp,
  _comment text NOT NULL,
  _rating INTEGER CHECK( _rating >0 AND _rating <6),
  _title NVARCHAR(200) NULL,
  _id_Product VARCHAR(30)  NOT NULL,
  FOREIGN KEY (_id_Product) REFERENCES product(_id),
  _id_customer INTEGER  NULL,
  FOREIGN KEY (_id_customer) REFERENCES customer(_id),
  _id_admin INTEGER NULL,
  FOREIGN KEY (_id_admin) REFERENCES  administrator(_id)
);
CREATE TABLE category_product(
  _id_product VARCHAR(30) ,
  FOREIGN KEY(_id_product) REFERENCES product(_id),
  _id_category INTEGER,
  FOREIGN KEY (_id_category) REFERENCES category(_id),
  primary key (_id_product, _id_category)
);
CREATE TABLE payment(
  _payment_id INTEGER PRIMARY KEY NOT NULL auto_increment,
  _content NVARCHAR(100) NOT NULL
);

CREATE TABLE order_product(
  _id INTEGER PRIMARY KEY auto_increment,
  _date DATETIME DEFAULT current_timestamp,
  _status_payment NVARCHAR(100) DEFAULT N'Unpaid' NOT NULL, /* --Chưa thanh toán */
  _status_delivery NVARCHAR(100) DEFAULT N'Not transport' NOT NULL, /* --Chưa vận chuyển */
  _total_bill FLOAT  NOT NULL CHECK (_total_bill >=0),
  _total_weight FLOAT CHECK (_total_weight >=0) ,
  _fee_delivery FLOAT CHECK (_fee_delivery >=0) ,
  _payment_id INTEGER NOT NULL,
  FOREIGN KEY (_payment_id) REFERENCES payment(_payment_id),
  _customerId INTEGER,
  FOREIGN KEY(_customerId) REFERENCES customer(_id),
  _id_customer_address INTEGER,
  FOREIGN KEY (_id_customer_address) REFERENCES customer_address(_id),
  _status_bill NVARCHAR(100) DEFAULT N'Expiring'
);

CREATE TABLE ref_product_order(
  _id INTEGER PRIMARY KEY auto_increment,
  _quantity INT  DEFAULT 0 CHECK (_quantity >0),
  _id_order INTEGER ,
  FOREIGN KEY (_id_order) REFERENCES order_product(_id),
  _id_product VARCHAR(30),
  FOREIGN KEY (_id_product) REFERENCES product(_id),
  _price FLOAT
);

CREATE TABLE cart(
  _id INTEGER PRIMARY KEY auto_increment,
  id_user NVARCHAR(255) NOT NULL,
  id_product VARCHAR(30) NOT NULL,
  FOREIGN KEY (id_product) REFERENCES product(_id),
  quantity INTEGER NOT NULL DEFAULT 1
);


/* CREATE PROCEDURE */

CREATE PROCEDURE SelectAdmin(IN paramter1 NVARCHAR(30))
  BEGIN
    SELECT
      _email,
      _password,
      _enabled
    FROM administrator
    WHERE _email = paramter1 OR _user=paramter1;
  END;

CREATE PROCEDURE SelectCustomer(IN paramter NVARCHAR(30))
  BEGIN
    SELECT
      _email,
      _password,
      _enabled
    FROM customer
    WHERE _email = paramter OR _user=paramter;
  END;

CREATE TABLE persistent_logins
(
  username  VARCHAR(60)                         NOT NULL,
  series    VARCHAR(60)                         NOT NULL
    PRIMARY KEY,
  token     VARCHAR(60)                         NOT NULL,
  last_used TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);


/* add data mặc định */

INSERT administrator (`_email`, `_user`,`_password`) VALUES ('admin@gmail.com','solitarysp','1');

/*INSERT customer (`_email`, `_user`, `_password`, `_name`) VALUES ('member@gmail.com','user','123','thanh');*/


