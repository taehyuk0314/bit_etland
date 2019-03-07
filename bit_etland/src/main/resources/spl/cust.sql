DROP TABLE ORDER_DETAILS;
DROP TABLE PRODUCTS;
DROP TABLE CATEGORIES;
DROP TABLE SUPPLIERS;
DROP TABLE ORDERS;
DROP TABLE SHIPPERS;
DROP TABLE EMPLOYEES;
DROP TABLE CUSTOMERS;
DROP TABLE IMAGE;

show tables;
CREATE TABLE IMAGE(
    IMG_SEQ INT auto_increment PRIMARY KEY,
    IMG_NAME VARCHAR(30) NOT NULL,
    IMG_EXTENTION VARCHAR(50) NOT NULL,
    OWNER VARCHAR(50) NOT NULL
)auto_increment=1000 default charset=utf8;

INSERT INTO IMAGE(IMG_SEQ,IMG_NAME,IMG_EXTENTION,OWNER)
VALUES(IMG_SEQ,'default_photo','jpg','관리자');
INSERT INTO IMAGE(IMG_SEQ,IMG_NAME,IMG_EXTENTION,OWNER)
VALUES(IMG_SEQ,'product_default','jpg','관리자');

CREATE TABLE CUSTOMERS(
CUSTOMER_ID VARCHAR(15) PRIMARY KEY,
CUSTOMER_NAME VARCHAR(15) NOT NULL,
PASSWORD VARCHAR(50)  NOT NULL,
SSN VARCHAR(50) UNIQUE NOT NULL,
PHONE VARCHAR(50) NOT NULL,
CITY VARCHAR(110) NOT NULL,
ADDRESS VARCHAR(110) NOT NULL,
POSTALCODE VARCHAR(50) NOT NULL,
PHOTO VARCHAR(50) DEFAULT '1000'
);

CREATE TABLE EMPLOYEES(
    EMPLOYEE_ID INT PRIMARY KEY auto_increment,
    MANAGER VARCHAR(50) NOT NULL,
    NAME VARCHAR(30) NOT NULL,
    BIRTH_DATE VARCHAR(50) NOT NULL,
    PHOTO VARCHAR(20),
    NOTES VARCHAR(60)
)auto_increment=1000 default charset=utf8;

INSERT INTO EMPLOYEES(EMPLOYEE_ID,MANAGER,NAME,BIRTH_DATE,PHOTO,NOTES) VALUES(EMPLOYEE_ID,'매니저','김경민','1990.01.05','1000','FD');
CREATE TABLE SHIPPERS(
    SHIPPER_ID VARCHAR(15) PRIMARY KEY,
    SHIPPER_NAME VARCHAR(15)  NOT NULL,
    PHONE VARCHAR(15) UNIQUE NOT NULL
);

CREATE TABLE ORDERS(
    ORDER_ID INT PRIMARY KEY auto_increment,
    CUSTOMER_ID VARCHAR(15),
    EMPLOYEE_ID INT(15),
    ORDER_DATE DATETIME NOT NULL DEFAULT NOW(),
    SHIPPER_ID VARCHAR(15),
    CONSTRAINT ORDERS_FK_CUSTOMERS FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID),
    CONSTRAINT ORDERS_FK_EMPLOYEES FOREIGN KEY(EMPLOYEE_ID) REFERENCES EMPLOYEES(EMPLOYEE_ID),
    CONSTRAINT ORDERS_FK_SHIPPERS FOREIGN KEY(SHIPPER_ID) REFERENCES SHIPPERS(SHIPPER_ID)
)auto_increment=1000 default charset=utf8;

CREATE TABLE SUPPLIERS(
    SUPPLIER_ID INT PRIMARY KEY auto_increment,
    SUPPLIER_NAME VARCHAR(30) NOT NULL,
    CONTACT_NAME VARCHAR(30) NOT NULL,
    ADDRESS VARCHAR(70) NOT NULL,
    CITY VARCHAR(70) NOT NULL,
    POSTAL_CODE VARCHAR(30) NOT NULL,
    COUNTRY VARCHAR(30) NOT NULL,
    PHONE VARCHAR(50) NOT NULL
)auto_increment=1000 default charset=utf8;
INSERT INTO SUPPLIERS(SUPPLIER_ID,SUPPLIER_NAME,CONTACT_NAME,ADDRESS,CITY,POSTAL_CODE,COUNTRY,PHONE)
VALUES(SUPPLIER_ID,'삼성','김창하','메탄동','수원','6256','한국','02-156-1513');

CREATE TABLE CATEGORIES(
    CATEGORY_ID INT PRIMARY KEY auto_increment,
    CATEGORY_NAME VARCHAR(15),
    DESCRIPTION VARCHAR(50) 
)auto_increment=1000 default charset=utf8;
INSERT INTO CATEGORIES(CATEGORY_ID,CATEGORY_NAME,DESCRIPTION)
VALUES(CATEGORY_ID,'SmartPhone','da');
INSERT INTO CATEGORIES(CATEGORY_ID,CATEGORY_NAME,DESCRIPTION)
VALUES(CATEGORY_ID,'Desktop','dest');
INSERT INTO CATEGORIES(CATEGORY_ID,CATEGORY_NAME,DESCRIPTION)
VALUES(CATEGORY_ID,'NoteBook','smart');

CREATE TABLE PRODUCTS(
    PRODUCT_ID INT PRIMARY KEY auto_increment,
    PRODUCT_NAME VARCHAR(30) NOT NULL,
    SUPPLIER_ID INT,
    CATEGORY_ID INT,
    UNIT VARCHAR(50),
    PRICE INT,
    PHOTO VARCHAR(50) DEFAULT '1001',
    CONSTRAINT PRODUCTS_FK_SUPPLIERS FOREIGN KEY(SUPPLIER_ID) REFERENCES  SUPPLIERS(SUPPLIER_ID),
    CONSTRAINT PRODUCTS_FK_CATEGORIES FOREIGN KEY(CATEGORY_ID) REFERENCES CATEGORIES(CATEGORY_ID)
)auto_increment=1000 default charset=utf8;
INSERT INTO PRODUCTS(PRODUCT_ID,PRODUCT_NAME,SUPPLIER_ID,CATEGORY_ID,UNIT,PRICE)
VALUES(PRODUCT_ID,'갤럭시','1000','1000','100','20000');

CREATE TABLE ORDER_DETAILS(
    ORDER_DETAIL_ID INT PRIMARY KEY auto_increment,
    ORDER_ID INT,
    PRODUCT_ID INT,
    QUANTITY INT,
    CONSTRAINT ORDERDETAILS_ORDER_ID FOREIGN KEY(ORDER_ID) REFERENCES ORDERS(ORDER_ID),
    CONSTRAINT ORDERDETAILS_PRODUCT_ID FOREIGN KEY(PRODUCT_ID) REFERENCES PRODUCTS(PRODUCT_ID)
)auto_increment=1000 default charset=utf8;


insert into customers(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
values('hong','홍길동','1234','900101-1','010-1212-1212','03121','서울특별시 은평구','이랜드');
insert into customers(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
values('tah123','김태혁','1234','960314-1','010-4360-7560','03450','서울특별시 은평구 신사1동','증산로449 청운401호');
insert into customers(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
values('dae','김다정','1234','920914-2','010-5012-7557','03506','서울특별시 은평구 증산동',' 220-1 덕원@201호');
insert into customers(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
values('utf1212','김정길','1234','901025-1','010-4500-7743','03500','서울특별시 은평구 증산동','177-5');
insert into customers(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
values('kiuk901','김진표','1234','850110-1','010-7911-8509','03499','서울특별시 은평구 증산동','169-3 청록아파트101호');
insert into customers(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
values('usd0209','이혜원','1234','990920-2','010-4417-9811','04023','서울특별시 마포구 합정동','월드컵로 29');
insert into customers(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
values('foscal99','육현상','1234','981009-1','010-4009-7474','04023','서울특별시 마포구 합정동','426-10 그린랜드 빌리지');
insert into customers(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
values('iffy12','정하은','1234','940309-2','010-1108-8494','07214','서울특별시 영등포구 당산동','4당산 삼성 래미안903호');
insert into customers(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
values('yung312','이다영','1234','970312-2','010-7742-4911','03982','서울특별시 마포구 연남동','동교로 38길 8');
insert into customers(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
values('kimyu134','김유진','1234','961231-2','010-1488-8182','04047','서울특별시 마포구 합정동','412-27 k빌딩 803호');
insert into customers(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
values('jee4311','이지영','1234','890511-2','010-0119-8441','04074','서울특별시 마포구 상수동','335-10 상수 그린파크빌 102호');
insert into customers(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
values('kugi4119','구기영','1234','910111-1','010-9133-8991','04075','서울특별시 마포구 상수동','396 상수두산위브아파트');
insert into customers(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
values('dong4343','동영배','1234','920817-1','010-7899-4219','04067','서울특별시 마포구 상수동','88-18 상수동주택');
insert into customers(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
values('chii12','김영천','1234','850301-1','010-4377-4919','04381','서울특별시 용산구 이촌동','193-5 강서맨션101호');
insert into customers(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
values('namme1233','김희철','1234','891213-1','010-9411-9881','07718','서울특별시 강서구 화곡동','377-42');
INSERT INTO CUSTOMERs(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
VALUES('Gameing','배정욱','1234','901220-1','010-8452-6312','07728','서울특별시 강서구 강서로 142','삼화빌리지102호');                    
INSERT INTO CUSTOMERs(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
VALUES('Tomas','정서우','1234','900830-1','010-5245-8453','07727','서울특별시 강서구 화곡로 176-21','썬라인101호');                    
INSERT INTO CUSTOMERs(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
VALUES('Rupi','이창준','1234','940234-1','010-3254-4512','07677','서울특별시 강서구 초록마을로11길 27','도원힐라이프');                    
INSERT INTO CUSTOMERs(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
VALUES('Ourusa','김창하','1234','950425-1','010-5491-4425','07677','서울특별시 강서구 까치산로12길 57','케이앤와이빌리지');                    
INSERT INTO CUSTOMERs(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
VALUES('Smoker','김영수','1234','940201-2','010-5598-7812','07679','서울특별시 강서구 까치산로 63','쉐보레강서바로서비스');                   
INSERT INTO CUSTOMERs(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
VALUES('Oarora','김은정','1234','951112-2','010-8265-4455','07726','서울특별시 강서구 강서로26길 35-27','경민아트빌120호');                    
INSERT INTO CUSTOMERs(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
VALUES('ting','이지은','1234','900512-2','010-7751-1513','07676','서울특별시 강서구 초록마을로21길 6','영산빌라202호');                   
INSERT INTO CUSTOMERs(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
VALUES('skrad','김우석','1234','970118-1','010-5098-5412','07730','서울특별시 강서구 까치산로4길 98-10','햇빛애주택302호');                    
INSERT INTO CUSTOMERs(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
VALUES('monga','고동영','1234','961211-1','010-5611-6312','07727','서울특별시 강서구 화곡로 176-19','성재센트리움아파트102호');                    
INSERT INTO CUSTOMERs(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
VALUES('rion','김지연','1234','960422-2','010-5131-1123','07721','서울특별시 강서구 화곡로34길 22','프라임하우스102호');                    
INSERT INTO CUSTOMERs(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
VALUES('tail','박은지','1234','940220-2','010-6151-8488','07730','서울특별시 강서구 까치산로4다길 21','아름아트빌102호');
INSERT INTO CUSTOMERs(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
VALUES('chun34','천희주','1234','950903-2','010-4911-7720','02579','서울특별시 동대문구 신설동','42');
INSERT INTO CUSTOMERs(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
VALUES('asa1234','차인표','1234','830817-1','010-6491-0811','03067','서울특별시 종로구 혜화동','5-37 중앙그린빌라 203호');
INSERT INTO CUSTOMERs(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTALCODE,CITY,ADDRESS)
VALUES('groop','차하나','1234','851219-1','010-4598-8941','03077','서울특별시 종로구 혜화동','166-4');

INSERT INTO EMPLOYEES(EMPLOYEE_ID,MANAGER,NAME,BIRTH_DATE,PHOTO,NOTES)
VALUES(Employee_id,'김경민','김태혁','960314-1','tae.jsp','갑분싸');