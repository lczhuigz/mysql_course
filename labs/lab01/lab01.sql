-- 创建数据库
CREATE DATABASE if NOT EXISTS db_school;
-- 使用数据
USE db_school;
-- 创建表
CREATE TABLE if NOT EXISTS student(
    sno CHAR(10) PRIMARY KEY,
    sname VARCHAR(8),
    ssex CHAR(2),
    sbirthday DATETIME,
    saddress VARCHAR(50),
    sdept CHAR(16),
    speciality VARCHAR(20)
);

CREATE TABLE if NOT EXISTS course (
    cno CHAR(5) PRIMARY KEY,
    cname VARCHAR(20)
);

CREATE TABLE if NOT EXISTS sc (
    sno CHAR(10),
    cno CHAR(5),
    degree DECIMAL(4,1),
    PRIMARY KEY (sno, cno),
    FOREIGN KEY (sno) REFERENCES student(sno),
    FOREIGN KEY (cno) REFERENCES course(cno)
);

CREATE TABLE if NOT EXISTS teacher (
    tno CHAR(3) PRIMARY KEY,
    tname VARCHAR(8),
    tsex CHAR(2),
    tbirthday DATE,
    tdept CHAR(16)
);

CREATE TABLE if NOT EXISTS teaching (
    cno CHAR(5),
    tno CHAR(3),
    cterm TINYINT,
    PRIMARY KEY (cno, tno),
    FOREIGN KEY (cno) REFERENCES course(cno),
    FOREIGN KEY (tno) REFERENCES teacher(tno)
);
-- 插入数据
INSERT INTO student VALUES
('20050101', '李勇', '男', '1987-01-12', '山东济南', '计算机工程系', '计算机应用'),
('20050201', '刘晨', '女', '1988-06-04', '山东青岛', '信息工程系', '电子商务'),
('20050301', '王敏', '女', '1989-12-23', '江苏苏州', '数学系', '数学'),
('20050202', '张立', '男', '1988-08-25', '河北唐山', '信息工程系', '电子商务');

INSERT INTO course VALUES
('C01', '数据库'),
('C02', '数学'),
('C03', '信息系统'),
('C04', '操作系统');

INSERT INTO sc VALUES
('20050101', 'C01', 92),
('20050101', 'C02', 85),
('20050101', 'C03', 88),
('20050201', 'C02', 90),
('20050201', 'C03', 80);

INSERT INTO teacher VALUES
('101', '李新', '男', '1977-01-12', '计算机工程系'),
('102', '钱军', '女', '1968-06-04', '计算机工程系'),
('201', '王小花', '女', '1979-12-23', '信息工程系'),
('202', '张小青', '女' ,'1968-08-25','信息工程系');

INSERT INTO teaching VALUES
('C01', '101', 2),
('C02', '102', 1),
('C03', '201', 3),
('C04', '202', 4);
-- 删除表
DROP TABLE student, course, teaching, teacher, sc;
-- 删除数据库
DROP DATABASE if EXISTS db_school;