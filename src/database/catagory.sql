
delete from category;
delete from cart;
delete from detailcategory;
delete from product;

select * from Category;
select * from detailcategory;
select * from product;

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
values(11,"Logitech",3),(12,"Kingston HyperX",3),(13,"Razer",3),(14,"Asus",3),(15,"MSI",3),(16,"Hãng Khác",3);
#bàn phím
insert into detailcategory(id,detail_cate_name,cate_id)
values(17,"Phím cơ",4),(18,"Giả cơ",4);
#tai nghe
insert into detailcategory(id,detail_cate_name,cate_id)
values(19,"JBL",5),(20,"Sony",5),(21,"PHILIPS",5);
