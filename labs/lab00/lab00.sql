-- 创建名为db_school的数据库
create database if NOT EXISTS db_school charset utf8mb4;

-- 使用名为db_school的数据库
use db_school;

-- 创建名为tb_student的表
create table if NOT EXISTS tb_student(
  sno char(10) not null primary key,
  sname varchar(8) null,
  ssex char(2) null,
  sbirthday datetime null,
  saddress varchar(50) null,
  sdept char(16) null,
  speciality varchar(20) null
);

-- 向名为tb_student的表插入数据
insert into tb_student
(sno, sname, ssex, sbirthday, saddress, sdept, speciality)
values
('20050101', '李勇', '男', '1987-01-12', '山东济南', '计算机工程系', '计算机应用'),
('20050201', '刘晨', '女', '1988-06-04', '山东青岛', '信息工程系', '电子商务'),
('20050301', '王敏', '女', '1989-12-23', '江苏苏州', '数学系', '数学'),
('20050202', '张立', '男', '1988-08-25', '河北唐山', '信息工程系', '电子商务');

-- 删除sname为李勇的数据
delete from tb_student where sname = '李勇';

-- 修改数据
update tb_student set sname = '张丽娜' where sname = '张立';

-- 修改数据
update tb_student set sdept = '软件系' where sname = '王敏';

-- 删除名为db_school的数据库
drop database db_school;