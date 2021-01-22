create database Website_TMDT;

use Website_TMDT ;

Create table Account
(
	id int auto_increment,
    username varchar(255) unique not null,
    password varchar(255) not null,
    email varchar(255),
    phonenumber char(15),
    address nvarchar(255),
    avatar varchar(255),
    role_id int, 			-- 1: admin 0:client
    Primary	Key(id)
);


Create table Category
(
	id int auto_increment,
	cate_name nvarchar(255) not null,
    image varchar(255),
    Primary	Key(id)
);

Create table DetailCategory
(
	id int auto_increment,
	detail_cate_name nvarchar(255) not null,
    image varchar(255),
    cate_id int ,
    Foreign Key(cate_id) references Category(id),
    Primary	Key(id)
);

Create table product
(
	id int auto_increment,
	product_name nvarchar(255) not null,
    image varchar(255),
    price real,
    describe_pro nvarchar(255),
    detail_cate_id int ,
    Foreign Key(detail_cate_id) references DetailCategory(id),
    Primary	Key(id)
);

Create table cart
(
	id int auto_increment,
    user_id int,
    total_price real,
    buydate date,
    Foreign Key(user_id) references Account(id),

    Primary Key(id)
);
alter table cart
add column customer_id int references customer(id);

create table cartitem
(
	cart_id int auto_increment not null,
    product_id int,
    quantity int,
    unit_price real,
    Foreign Key(cart_id) references Cart(id),
    Foreign Key(product_id) references Product(id),
    Primary Key(cart_id,product_id)
);
create table customer
(
	id int auto_increment,
    fullname varchar(255),
    email varchar(255),
    phonenumber char(15),
    address nvarchar(255),
    Primary	Key(id)
);

alter table cart
add foreign key (customer_id) references Customer(id);

create table brand
(
	id int primary key auto_increment,
    brand_name nvarchar(255)
);


alter table product
add column brand_id int references brand(id);

alter table product
add  Foreign Key (brand_id)  references brand(id);


alter table product
add column quantity int default 0;


alter table cart
add column status int default 0;

alter table cart
add column option_pay int default 0;

ALTER TABLE brand ADD image VARCHAR(255) AFTER brand_name;


-- ===================================== insert



insert into category(id,cate_name)
values (1,"Laptop"),(2,"Màn Hình"),(3,"Chuột chơi game"),(4,"Bàn phím"),(5,"Tai nghe");
#laptop
insert into detailcategory(id,detail_cate_name,cate_id)
values (1,"Laptop Acer",1),(2,"Laptop Asus",1),(3,"Laptop Dell",1),(4,"Laptop Lenovo",1),(5,"Laptop HP",1);
#ManHinh
insert into detailcategory(id,detail_cate_name,cate_id)
values (6,"Màn Hình Samsung",2),(7,"Màn Hình ASUS",2),(8,"Màn Hình Acer",2),(9,"Màn Hình Gigabyte",2),(10,"Màn Hình MSI",2);
#Chuột chơi game
insert into detailcategory(id,detail_cate_name,cate_id)
values(11,"Chuột Logitech",3),(12,"Chuột Kingston HyperX",3),(13,"Chuột Razer",3),(14,"Chuột Asus",3),(15,"Chuột MSI",3),(16,"Chuột Hãng Khác",3);
#bàn phím
insert into detailcategory(id,detail_cate_name,cate_id)
values(17,"Bàn phím Logitech",4),(18,"Bàn phím Kingston HyperX",4),(19,"Bàn phím Razer",4),(20,"Bàn phím Asus",4),(21,"Bàn phím MSI",4),(22,"Bàn phím Hãng Khác",4);
#tai nghe
insert into detailcategory(id,detail_cate_name,cate_id)
values(23,"Tai nghe Logitech",5),(24,"Tai nghe Kingston HyperX",5),(25,"Tai nghe Razer",5),(26,"Tai nghe Asus",5),(27,"Tai nghe MSI",5),(28,"Tai nghe Hãng Khác",5);

-- ====================
# insert Brand

insert into brand (id,brand_name,image)
values (1,'MSI','lg1.png');

insert into brand (id,brand_name,image)
values (2,'Acer','logo2.png');
insert into brand (id,brand_name,image)
values (3,'Asus','logo3.jpg');
insert into brand (id,brand_name,image)
values (4,'Dell','logo4.png');
insert into brand (id,brand_name,image)
values (5,'Lenovo','logo5.jpg');
insert into brand (id,brand_name,image)
values (6,'HP','logo6.png');

insert into brand (id,brand_name,image)
values (7,'Samsung','logo7.jpeg');
insert into brand (id,brand_name,image)
values (8,'Gigabyte','logo8.png');
insert into brand (id,brand_name,image)
values (9,'Logitech','logo9.png');
insert into brand (id,brand_name,image)
values (10,'Kingston HyperX','logo10.png');
insert into brand (id,brand_name,image)
values (11,'Razer','logo11.png');
insert into brand (id,brand_name,image)
values (12,'Dareu','logo12.png');
insert into brand (id,brand_name,image)
values (13,'Cooler Master','logo13.png');

insert into brand (id,brand_name,image)
values (14,'Corsier','logo14.png');
insert into brand (id,brand_name,image)
values (15,'Other','logo15.PNG');

-- ==============================
use website_tmdt;
insert into Account(username ,password ,email ,phonenumber,address ,avatar ,role_id )
values('ducadmin','duc123',	'haductrung392000@gmail.com',	 '9410250036',	'Obere Str. 0123',	               'U1',1),
     ('ducuser	','duc123',	'thanhlong120098@gmail.com',	'856352694',	'Avda. de la Constitución 5678',	'U2',	0),
     ('nghiaadmin',	'nghia123',	'bvnghia0000@gmail.com',	'124536824',	'Mataderos  7890',	                'U3',	1),
     ('nghiauser',	'nghia123',	'bvnghiauu@gmail.com',	'147253689',	'7890 Hanover Sq.',	                'U4',	0),
     ('thangadmin','thang123',	'nd1@gmail.com',	 '9410250036',	'Obere Str. 0123',	               'U1',    1),
     ('thanguser','thang123',	'nd2@gmail.com',	'856352694',	'Avda. de la Constitución 5678',	'U2',	0),
     ('phucadmin',	'phuc123',	'nd3@gmail.com',	'124536824',	'Mataderos  7890',	                'U3',	1),
     ('phucuser',	'phuc123',	'nd4@gmail.com',	'147253689',	'7890 Hanover Sq.',	                'U4',	0);
     
-- 'Bảo hành 3S1 siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật' 
-- #---------------Laptop 
#lapop acer     
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Laptop gaming Acer Aspire 7 A715 41G R282","AcerR282.png",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',1,2,10),
("Laptop gaming Acer Nitro 5 AN515 55 5923","Acer5923.png",6000000,'Bảo hành   siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',1,2,15),
("Laptop Gaming ACER Predator Helios PH315 53 770L","Acer770L.png",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',1,2,6),
("Laptop gaming Acer Predator Helios 300 PH315 53 70U6","Acer70U6.png",8000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',1,2,9),

("Laptop gaming Acer Nitro 5 AN515 55 55E3","Acer55E3.png",9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',1,2,10),
("Laptop gaming Acer Aspire 7 A715 41G R150","AcerR150.png",10000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',1,2,8),
("Laptop Acer Aspire 3 A315 56 37DV","Acer37DV.png",11000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',1,2,6),
("Laptop Acer Aspire 3 A315 57G 31YD","Acer31YD.png",10000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',1,2,9),

("Laptop Acer Aspire 5 A514 54 39KU",'Acer39KU.png',8000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',1,2,15),
("Laptop Acer Swift 3 S SF314 42 R5Z6",'AcerR5Z6.png',9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',1,2,10),
("Laptop Acer Swift 3 SF314 42 R0TR","AcerR0TR.png",8000000,'Bảo hành 3S1 siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',1,2,8),
("Laptop Acer Swift 3X SF314 510G 57MR","Acer57MR.png",5000000,'Bảo hành 3S1 siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',1,2,5);

# laptop asus
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Laptop ASUS TUF Gaming FA506II AL012T","AsusAL012T.png",10000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',2,3,10),
("Laptop ASUS TUF Gaming F15 FX506LI HN039T","AsusHN039T.png",9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',2,3,10),
("Laptop Gaming Asus ROG Strix G G512 IAL013T","AsusIAL013T.png",9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',2,3,10),
("Laptop ASUS ROG Strix G15 G512 IAL011T","AsusIAL011T.png",15000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',2,3,10),

("Laptop ASUS D409DA EK499T","AsusEK499T.png",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',2,3,10),
("Laptop ASUS Expertbook P1410CJA EK354T","AsusEK354T.png",8000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',2,3,10),
("Laptop Asus Vivobook A515EA BQ489T","AsusBQ489T.png",6000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',2,3,10),
("Laptop ASUS ExpertBook P2451FA EK0229T","AsusEK0229T.png",9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',2,3,10),

("Laptop Asus Vivobook S533EA BQ018T","AsusBQ018T.png",8000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',2,3,10),
("Laptop ASUS ZenBook Flip UX363EA HP130T","AsusHP130T.png",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',2,3,10),
("Laptop ASUS ProArt Studiobook W700G1T AV046T","AsusAV046T.png",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',2,3,10),
("Laptop ASUS ZenBook Duo UX481FL BM048T","AsusBM048T.png",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',2,3,10);

# laptop dell
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Laptop Dell G3 3500 G3500A","DellG3500A.png",9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',3,4,10),
("Laptop Dell Vostro 15 5502 70231340","Dell70231340.png",8000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',3,4,10),
("Laptop Dell Inspiron 5490 FMKJV11","DellFMKJV11.png",6000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',3,4,10),
("Laptop Dell Inspiron 14 5406 N4I5047W","DellN4I5047W.png",10000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',3,4,10),

("Laptop Dell Vostro 15 5502 V5502A","DellV5502A.png",7000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',3,4,10),
("Laptop Dell Inspiron 15 7501 X3MRY1","DellX3MRY1.png",8000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',3,4,10),
("Laptop Dell XPS 13 JGNH61","DellJGNH61.png",15000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',3,4,10),
("Laptop Dell Inspiron 15 5502 1XGR11","Dell1XGR11.png",11000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',3,4,10),

("Laptop Dell Vostro 14 5402 V5402A","DellV5402A.png",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',3,4,10),
("Laptop Dell Vostro 15 5502 70231320","Dell70231320.png",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',3,4,10),
("Laptop Dell Vostro 15 5502 70231322","Dell70231322.png",14000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',3,4,10),
("Laptop Dell Vostro 15 5502 V5502B","DellV5502B.png",13000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',3,4,10);

# laptop lenovo
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Laptop gaming Lenovo Legion 5 15IMH05 82AU004YVN","Lonovo82AU004YVN.png",15000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',4,5,10),
("Laptop gaming Lenovo Legion 5P 15IMH05H 82AW005QVN","Lonovo82AW005QVN.png",14000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',4,5,10),
("Laptop Lenovo IdeaPad 5 14ITL05 82FE000GVN","Lonovo82FE000GVN.png",9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',4,5,10),
("Laptop Lenovo ThinkPad E14 20RAS0KX00","Lonovo20RAS0KX00.png",9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',4,5,10),

("Laptop Lenovo ThinkPad E14 20RAS01000","Lonovo20RAS01000.png",9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',4,5,10),
("LapTop Lenovo ThinkBook 14 IIL - 20SL00MFVN","Lonovo20SL00MFVN.png",9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',4,5,10),
("Laptop Lenovo IdeaPad S145-15IIL 81W8001YVN","Lonovo81W8001YVN.png",9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',4,5,10),
("Laptop Lenovo ThinkBook 14-IML 20RV00BEVN","Lonovo20RV00BEVN.png",9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',4,5,10),

("Laptop Lenovo Thinkpad E14 Gen 2-ITU 20TA002NVA","Lonovo20TA002NVA.png",9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',4,5,10),
("Laptop Lenovo Ideapad Gaming 3 15IMH05 81Y40067VN","Lonovo81Y40067VN.png",9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',4,5,10),
("Laptop Lenovo Ideapad S340 14IIL ","Lonovo14IIL.png",9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',4,5,10),
("Laptop Lenovo Ideapad C340 14IML","Lonovo14IML.png",9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',4,5,10);

# laptop hp
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Laptop HP 15s FQ1107TU 193Q3PA","Hp193Q3PA.png",15000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',5,6,10),
("Laptop HP 340s G7 224L1PA","Hp224L1PA.png",9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',5,6,10),
("Laptop HP ProBook 455 G7 1A1A9PA","Hp1A1A9PA.png",10000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',5,6,10),
("Laptop HP 15s FQ2027TU 2Q5Y3PA","Hp2Q5Y3PA.png",8000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',5,6,10),

("Laptop HP 15s FQ2029TU 2Q5Y7PA","Hp2Q5Y7PA.png",8000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',5,6,10),
("Laptop HP ProBook 455 G7 1A1B1PA","Hp1A1B1PA.png",6000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',5,6,10),
("Laptop HP Envy 13 ba1027TU 2K0B1PA","Hp2K0B1PA.png",9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',5,6,10),
("Laptop HP 348 G7 9PH09PA","Hp9PH09PA.png",9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',5,6,10),

("Laptop HP EliteBook x360 1030 G4 6MJ72AV","Hp6MJ72AV.png",10000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',5,6,10),
("Laptop HP 340s G7 224L1PA5 ","Hp224L1PA5.png",15000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',5,6,10),
("Laptop HP Pavilion x360 14-dh0104TU 6ZF32PA","Hp6ZF32PA.png",9000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',5,6,10),
("LLaptop HP 15s-fq2027TU 2Q5Y3SA","Hp2Q5Y3SA.png",15000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',5,6,10);

-- ================================================================---
#manf hinhf samsung
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity) #9
values 
("Màn hình LCD SAMSUNG LF27T350","SamsungLCDSAMSUNGLF27T350.jpg",6000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',6,7,10),
("Màn Hình cong Samsung 48.9 LC49HG90DMEXXV","SamsungLC49HG90DMEXXV.jpg",7000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',6,7,10),
("Màn hình LCD Samsung 24 LS24D332HSXXV","SamsungLS24D332HSXXV.jpg",8000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',6,7,5),
("Màn hình Samsung 27 LC27R500FHEXXV","SamsungLC27R500FHEXXV.jpg",7000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',6,7,15),
("Màn Hình Samsung 23.5 LS24F350FHEXXV","SamsungLS24F350FHEXXV.jpg",8000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',6,7,5),
("Màn Hình Samsung 18.5 LS19F350HNEXXV","SamsungLS19F350HNEXXV.jpg",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',6,7,4),
("Màn Hình cong Samsung 23.5 LC24F390FHEXXV","SamsungLC24F390FHEXXV.jpg",10000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',6,7,5),
("Màn Hình Samsung 23.6 LS24E360HLXV","Ss236LS24E360HLXV.png",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',6,7,10),
("Màn Hình cong Samsung 27 LC27F390FHEXXV","Ss27LC27F390FHEXXV.png",6000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',6,7,8);

#man hinh asus
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)#9
values 
("Màn Hình ASUS 23.8 VA249HE","ASUS23.8VA249HE.jpg",6000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',7,3,10),
("Màn hình LCD ASUS VZ279HEG1R","LCDASUSVZ279HEG1R.png",6000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',7,3,9),
("Màn Hình ASUS 21.5 VP228NE","ASUS21.5VP228NE.jpg",6000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',7,3,8),
("Màn Hình ASUS 21.5 VZ229HE","ASUS21.5VZ229HE.jpg",6000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',7,3,6),
("Màn hình ASUS 23.6 VP247H","ASUS23.6VP247H.png",6000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',7,3,15),
("Màn Hình ASUS 27 VZ27AQ","ASUS27VZ27AQ.jpg",6000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',7,3,4),
("Màn hình LCD Asus 27 inch VX278H","Asus27inchVX278H.jpg",6000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',7,3,8),
("Màn Hình ASUS ROG Strix 27 XG27VQ","ASUSROGStrix27XG27VQ.jpg",6000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',7,3,12),
("Màn hình LCD ASUS TUF GAMING VG27VQ","LCDASUSTUFGAMINGVG27VQ.jpg",6000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',7,3,11);

#man hinh acer
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)#9
values 
("Màn Hình Acer 19.5 S200HQL","AcerS200HQL.jpg",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',8,2,10),
("Màn Hình cong Acer 31.5 ED322QL","congAcerED322QL.jpg",6000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',8,2,8),
("Màn Hình Acer 18.5 EB192QA","AcerEB192QA.jpg",10000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',8,2,11),
("Màn Hình Acer 23.8 ET241Y","AcerET241Y.jpg",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',8,2,9),
("Màn Hình Acer 27 ET271","AcerET271.jpg",8000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',8,2,7),
("Màn Hình Acer 23.6 K242HQL","AcerK242HQL.jpg",6000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',8,2,8),
("Màn Hình Acer Nitro 27","AcerNitro27.jpg",10000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',8,2,5),
("Màn hình LCD ACER K222HQL","LCDACERK222HQL.jpg",4500000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',8,2,5),
("Màn Hình Acer 19.5 K202HQL","Acer19.5K202HQL.jpg",5800000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',7,3,10);

#man hinh Gigabyte
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Màn hình LCD Gigabyte Aorus AD27QD-EK","GIGABYTEAD27QD.jpg",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',9,8,10),
("Màn hình LCD GIGABYTE G27QC-EK","GIGABYTEG27QC.jpg",4500000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',9,8,10),
("Màn hình LCD GIGABYTE G32QC-EK","GIGABYTEG32QC.jpg",8900000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',9,8,10),
("Màn hình LCD GIGABYTE G27FC-EK","GIGABYTEG27FC.png",6200000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',9,8,10);


#Màn Hình MSI
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Màn hình LCD MSI Optix MAG322CQRV","MSIMAG322CQRV.jpg",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',10,1,10),
("Màn hình LCD MSI Pro MP221","MSIMP221.jpg",6500000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',10,1,8),
("Màn hình LCD MSI Pro MP241","MSIMP241.jpg",8500000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',10,1,9),
("Màn hình LCD MSI Optix MAG271CQR","MSIMAG271CQR.jpg",1400000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',10,1,4),
("Màn hình LCD MSI Optix G27C4","MSIG27C4.jpg",2100000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',10,1,10),
("Màn hình LCD MSI Optix G271","MSIG271.jpg",8000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',10,1,5),
("Màn hình LCD MSI Optix G27C5","MSIG27C5.jpg",3800000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',10,1,4);


#---====================================================================
#chuot choi game
#chuot logittich
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Chuột máy tính Logitech B100 (Đen)","LogitechB100.jpg",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',11,9,10),
("Chuột không dây Logitech M187 (Trắng)","LogitechM187.jpg",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',11,9,5),
("Chuột máy tính Logitech M105 (Đen)","LogitechM105.jpg",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',11,9,8);

# chuot Newmen hang khac
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Chuột máy tính Newmen M266 đen","NewmenM266.jpg",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',16,15,10),
("Chuột máy tính không dây Newmen F266 (Vàng)","NewmenF266.jpg",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',16,15,8),
("Chuột máy tính không dây Newmen F430 (Đen)","NewmenF430.jpg",5000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',16,15,9);
# chuot hang khac
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Chuột không dây Microsoft RJN-00017","RJN-00017.jpg",1000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',16,15,10),
("Chuột có dây Microsoft Classic Intellimouse","MicrosoftClassicIntellimouse.jpg",4000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',16,15,10),
("Chuột không dây Microsoft Arc ELG-00005 (Đen)","MicrosoftArcELG-00005.jpg",2000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',16,15,10);


#id 14 ban phim LOGITECH
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Bàn phím Logitech K400 Plus","K400Plus.jpg",1000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',17,9,10),
("Bàn phím không dây Logitech MX Keys (Đen)","MXKey.jpg",1200000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',17,9,10),
("Bàn phím cơ gaming Logitech G512 GX (Tactile)","LogitechG512.png",2100000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',17,9,10);

#id 15 ban phim DAREU
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Bàn phím Dareu EK880 Brown Switch","EK880Brown.jpg",1000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',17,12,10),
("Bàn phím Dareu EK880 Blue Switch","EK880Blue.jpg",1200000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',17,12,15),
("Bàn phím Dareu EK169 Red D Switch","EK169RedD.jpg",1900000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',17,12,8);

#id ban phim AKKO
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Bàn phím Akko 3108S RGB PRO Blue Switch (108 keys) (Hồng)","Akko3108S.jpg",1000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',22,15,15),
("Bàn phím AKKO 3087 World Tour - Tokyo Switch Pink (87 keys)","AKKO3087.jpg",1000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',22,15,11),
("Bàn phím cơ Akko 3108 Dragon Ball Z - Goku Orange Switch","Akko3108.jpg",1000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',22,15,4);

#id  tai nghe 16 JBL
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Tai nghe Gaming JBL QUANTUM 400 ( Đen)","GamingJBLQUANTUM400.jpg",1200000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',28,15,15),
("Tai nghe On-ear JBL T500 (Xanh dương)","OnEarJBLT500.jpg",1400000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',28,15,15),
("Tai Nghe Bluetooth JBL Tune T220TWSBLK (Đen)","BLTuneT220TWSBLK.jpg",1000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',28,15,15);


#id 17 tai nghe  Sony
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Tai nghe Sony MDR-XB550AP (Đỏ)","SonyMDRXB550AP.jpg",1200000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',28,15,10),
("Tai nghe On-ear Sony MDRZX310APLCE (Xanh dương)","SonyMDRZX310APLCE.png",1400000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',28,15,9),
("Tai nghe không dây In-ear Sony WI-SP500/BQE (Đen)","SonyWISP500.jpg",1000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',28,15,15);
#id 18 tai nghe PHILIPS
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Tai nghe Over-ear Philips SHP 2000 (Đen)","PhilipsSHP2000.jpg",1000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',28,15,8),
("Tai nghe On-ear Philips SHL 3060 (Xanh)","PhilipsSHL3060.jpg",1200000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',28,15,2),
("Tai nghe On-ear Philips SHM6110U (Trắng)","PhilipsSHM6110U.jpg",1600000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',28,15,2);

# tai nghe logittech
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Tai nghe nhét tai chống ồn T13 TOPK ","TaiNgheTOPK.png",1200000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',23,9,15),
("Tai Nghe Nhét Tai Mi Basic HSEJ03JY","TaiNgheHSEJ03JY.png",1100000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',23,9,15),
("Tai nghe có dây nhét tai Q21","TaiNgheQ21.png",3000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',23,9,15);
  


# Tai nghe Kingston HyperX
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Tai Nghe Nhét Tai Fontopia MDR-E9LP ","TaiNgheMDR-E9LP.png",1200000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',24,10,15),
("Tai Nghe Nhét Tai Mi Basic HSEJ03Jz","TaiNgheHSEJ03Jz.png",1100000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',24,10,15),
("Tai nghe có dây N20 âm thanh nguyên bản chất lượng cao","TaiNgheN20.png",3000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',24,10,15);


# Tai nghe Razer
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Tai Nghe E9LP ","TaiNgheE9LP.png",1200000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',25,11,3),
("Tai nghe Razer AKG","TaiNgheAKG.png",1100000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',25,11,10),
("Tai Nghe Nhét Tai Langsdom Super Bass JM26","TaiNgheJM26.png",3000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',25,11,8);


# Tai nghe Asus
insert into product(product_name,image,price,describe_pro,detail_cate_id,brand_id,quantity)
values 
("Tai nghe nhét tai có dây S17","TaiNgheS17.png",1200000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',26,3,3),
("Tai nghe nhét tai Jack 3.5mm BYZ","TaiNgheBYZ.png",1100000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',26,3,10),
("Tai Nghe Nhét Tai Sony MDR-EX15AP","TaiNgheEX15AP.png",3000000,'Bảo hành  siêu nhanh: bảo hành nhanh, trong vòng 3 ngày kể cả thứ 7 và chủ nhật',26,3,8);






