select * from Category;

insert into category(id,cate_name)
values (1,"Laptop"),
(2,"Màn Hình"),
(3,"Chuột chơi game"),
(4,"Bàn phím"),
(5,"Tai nghe");

select * from detailcategory;
insert into detailcategory(id,detail_cate_name,cate_id)
values (1,"Laptop Acer",1),
(2,"Laptop Asus",1),
(3,"Laptop Dell",1),
(4,"Laptop Lenovo",1),
(5,"Laptop HP",1);
