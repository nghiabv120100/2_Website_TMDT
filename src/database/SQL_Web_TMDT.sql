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
insert into Account(username ,password ,email ,phonenumber,address ,avatar ,role_id )
values('AN',	     '123456',	'nd1@gmail.com',	 '9410250036',	'Obere Str. 0123',	               'U1',0),
     ('KHANG	','654321',	'nd2@gmail.com',	'856352694',	'Avda. de la Constitución 5678',	'U2',	0),
     ('THINH',	'234561',	'nd3@gmail.com',	'124536824',	'Mataderos  7890',	                'U3',	1),
     ('VUONG',	'345612',	'nd4@gmail.com',	'147253689',	'7890 Hanover Sq.',	                'U4',	1);
     
     
insert into category(id,cate_name)
values (1,"Laptop"),(2,"Màn Hình"),(3,"Chuột chơi game"),(4,"Bàn phím"),(5,"Tai nghe");
-- laptop
insert into detailcategory(id,detail_cate_name,cate_id)
values (1,"Laptop Acer",1),(2,"Laptop Asus",1),(3,"Laptop Dell",1),(4,"Laptop Lenovo",1),(5,"Laptop HP",1);
-- ManHinh
insert into detailcategory(id,detail_cate_name,cate_id)
values (6,"Màn Hình Samsung",2),(7,"Màn Hình ASUS",2),(8,"Màn Hình Acer",2),(9,"Màn Hình Gigabyte",2),(10,"Màn Hình MSI",2);
-- Chuột chơi game
insert into detailcategory(id,detail_cate_name,cate_id)
values(11,"Logitech",3),(12,"Kingston HyperX",3),(13,"Razer",3),(14,"Asus",3),(15,"MSI",3),(16,"Hãng Khác",3);
-- bàn phím
insert into detailcategory(id,detail_cate_name,cate_id)
values(17,"Phím cơ",4),(18,"Giả cơ",4);
-- tai nghe
insert into detailcategory(id,detail_cate_name,cate_id)
values(19,"JBL",5),(20,"Sony",5),(21,"PHILIPS",5);
-- -------------------------------------

-- insertBanphimChuot
-- -------------------------------
#cái này là t insert hôm bửa .. nếu muốn thêm tai nghe hay bàn phím thì sửa trong code nhen
#chuột 
insert into product(product_name,image,price,detail_cate_id)
values 
("Chuột máy tính Logitech B100 (Đen)","LogitechB100.jpg",10,10),
("Chuột không dây Logitech M187 (Trắng)","LogitechM187.jpg",15,10),
("Chuột máy tính Logitech M105 (Đen)","LogitechM105.jpg",50,10);
# chuot NEWMEN id 11
insert into product(product_name,image,price,detail_cate_id)
values 
("Chuột máy tính Newmen M266 đen","NewmenM266.jpg",50,11),
("Chuột máy tính không dây Newmen F266 (Vàng)","NewmenF266.jpg",50,11),
("Chuột máy tính không dây Newmen F430 (Đen)","NewmenF430.jpg",50,11);
#chuot MICROSOFT 12
insert into product(product_name,image,price,detail_cate_id)
values 
("Chuột không dây Microsoft RJN-00017","RJN-00017.jpg",50,12),
("Chuột có dây Microsoft Classic Intellimouse","MicrosoftClassicIntellimouse.jpg",50,12),
("Chuột không dây Microsoft Arc ELG-00005 (Đen)","MicrosoftArcELG-00005.jpg",50,12);

#insert banphim
#id 14 LOGITECH
insert into product(product_name,image,price,detail_cate_id)
values 
("Bàn phím Logitech K400 Plus","K400Plus.jpg",70,14),
("Bàn phím không dây Logitech MX Keys (Đen)","MXKey.jpg",70,14),
("Bàn phím cơ gaming Logitech G512 GX (Tactile)",".G512.jpg",70,14);
#id 15 DAREU
insert into product(product_name,image,price,detail_cate_id)
values 
("Bàn phím Dareu EK880 Brown Switch","EK880Brown.jpg",70,15),
("Bàn phím Dareu EK880 Blue Switch","EK880Blue.jpg",70,15),
("Bàn phím Dareu EK169 Red D Switch","EK169RedD.jpg",70,15);
#id 16 AKKO
insert into product(product_name,image,price,detail_cate_id)
values 
("Bàn phím Akko 3108S RGB PRO Blue Switch (108 keys) (Hồng)","Akko3108S.jpg",70,16),
("Bàn phím AKKO 3087 World Tour - Tokyo Switch Pink (87 keys)","AKKO3087.jpg",70,16),
("Bàn phím cơ Akko 3108 Dragon Ball Z - Goku Orange Switch","Akko3108.jpg",70,16);


#id 16 JBL
insert into product(product_name,image,price,detail_cate_id)
values 
("Tai nghe Gaming JBL QUANTUM 400 ( Đen)","GamingJBLQUANTUM400.jpg",30,16),
("Tai nghe On-ear JBL T500 (Xanh dương)","OnEarJBLT500.jpg",50,16),
("Tai Nghe Bluetooth JBL Tune T220TWSBLK (Đen)","BLTuneT220TWSBLK.jpg",43,16);
#id 17 Sony
insert into product(product_name,image,price,detail_cate_id)
values 
("Tai nghe Sony MDR-XB550AP (Đỏ)","SonyMDRXB550AP.jpg",60,17),
("Tai nghe On-ear Sony MDRZX310APLCE (Xanh dương)","SonyMDRZX310APLCE.png",50,17),
("Tai nghe không dây In-ear Sony WI-SP500/BQE (Đen)","SonyWISP500.jpg",44,17);
#id 18 PHILIPS
insert into product(product_name,image,price,detail_cate_id)
values 
("Tai nghe Over-ear Philips SHP 2000 (Đen)","PhilipsSHP2000.jpg",30,18),
("Tai nghe On-ear Philips SHL 3060 (Xanh)","PhilipsSHL3060.jpg",40,18),
("Tai nghe On-ear Philips SHM6110U (Trắng)","PhilipsSHM6110U.jpg",25,18);


-- -------------------------------------

-- insertdata
-- -------------------------------

-- -------------------------------------

-- insertManhinh
-- -------------------------------

#insert màn hình
#Màn Hình Samsung
insert into product(product_name,image,price,detail_cate_id)
values 
("Màn hình LCD SAMSUNG LF27T350","SamsungLCDSAMSUNGLF27T350.jpg",200,6),
("Màn Hình cong Samsung 48.9 LC49HG90DMEXXV","SamsungLC49HG90DMEXXV.jpg",200,6),
("Màn hình LCD Samsung 24 LS24D332HSXXV","SamsungLS24D332HSXXV.jpg",200,6),
("Màn hình Samsung 27 LC27R500FHEXXV","SamsungLC27R500FHEXXV.jpg",200,6),
("Màn Hình Samsung 23.5 LS24F350FHEXXV","SamsungLS24F350FHEXXV.jpg",200,6),
("Màn Hình Samsung 18.5 LS19F350HNEXXV","SamsungLS19F350HNEXXV.jpg",200,6),
("Màn Hình cong Samsung 23.5 LC24F390FHEXXV","SamsungLC24F390FHEXXV.jpg",200,6),
("Màn Hình Samsung 23.6 LS24E360HLXV"," Samsung23.6LS24E360HLXV.jpg",180,6),
("Màn Hình cong Samsung 27 LC27F390FHEXXV"," Samsung27LC27F390FHEXXV.jpg",200,6);
#Màn Hình Asus
insert into product(product_name,image,price,detail_cate_id)
values 
("Màn Hình ASUS 23.8 VA249HE","ASUS23.8VA249HE.jpg",200,7),
("Màn hình LCD ASUS VZ279HEG1R","LCDASUSVZ279HEG1R.png",245,7),
("Màn Hình ASUS 21.5 VP228NE","ASUS21.5VP228NE.jpg",200,7),
("Màn Hình ASUS 21.5 VZ229HE","ASUS21.5VZ229HE.jpg",200,7),
("Màn hình ASUS 23.6 VP247H","ASUS23.6VP247H.png",200,7),
("Màn Hình ASUS 27 VZ27AQ","ASUS27VZ27AQ.jpg",200,7),
("Màn hình LCD Asus 27 inch VX278H","Asus27inchVX278H.jpg",200,7),
("Màn Hình ASUS ROG Strix 27 XG27VQ","ASUSROGStrix27XG27VQ.jpg",200,7),
("Màn hình LCD ASUS TUF GAMING VG27VQ","LCDASUSTUFGAMINGVG27VQ.jpg",200,7);

#Màn Hình Acer
insert into product(product_name,image,price,detail_cate_id)
values 
("Màn Hình Acer 19.5 S200HQL","AcerS200HQL.jpg",200,8),
("Màn Hình cong Acer 31.5 ED322QL","congAcerED322QL.jpg",200,8),
("Màn Hình Acer 18.5 EB192QA","AcerEB192QA.jpg",200,8),
("Màn Hình Acer 23.8 ET241Y","AcerET241Y.jpg",200,8),
("Màn Hình Acer 27 ET271","AcerET271.jpg",200,8),
("Màn Hình Acer 23.6 K242HQL","AcerK242HQL.jpg",200,8),
("Màn Hình Acer Nitro 27","AcerNitro27.jpg",200,6),
("Màn hình LCD ACER K222HQL","LCDACERK222HQL.jpg",210,6),
("Màn Hình Acer 19.5 K202HQL","Acer19.5K202HQL.jpg",80,6);
#Màn Hình Gigabyte
insert into product(product_name,image,price,detail_cate_id)
values 
("Màn hình LCD Gigabyte Aorus AD27QD-EK","GIGABYTEAD27QD.jpg",200,9),
("Màn hình LCD GIGABYTE G27QC-EK","GIGABYTEG27QC.jpg",200,9),
("Màn hình LCD GIGABYTE G32QC-EK","GIGABYTEG32QC.jpg",200,9),
("Màn hình LCD GIGABYTE G27FC-EK","GIGABYTEG27FC.png",200,9);

#Màn Hình MSI
insert into product(product_name,image,price,detail_cate_id)
values 
("Màn hình LCD MSI Optix MAG322CQRV","MSIMAG322CQRV.jpg",200,10),
("Màn hình LCD MSI Pro MP221","MSIMP221.jpg",200,10),
("Màn hình LCD MSI Pro MP241","MSIMP241.jpg",200,10),
("Màn hình LCD MSI Optix MAG271CQR","MSIMAG271CQR.jpg",200,10),
("Màn hình LCD MSI Optix G27C4","MSIG27C4.jpg",200,10),
("Màn hình LCD MSI Optix G271","MSIG271.jpg",200,10),
("Màn hình LCD MSI Optix G27C5","MSIG27C5.jpg",200,10);
