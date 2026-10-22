CREATE DATABASE library;
USE library;
CREATE TABLE student (
    sno CHAR(2) NOT NULL,
    sname VARCHAR(10),
    age INT,
    sex CHAR(1),
    dept VARCHAR(20),
    PRIMARY KEY (sno)
);
CREATE TABLE book (
    bno CHAR(2) NOT NULL,
    bname VARCHAR(20),
    author VARCHAR(10),
    press VARCHAR(20),
    inventory INT,
    price DECIMAL(5, 2),
    PRIMARY KEY (bno)
);
CREATE TABLE borrow (
    sno CHAR(2) NOT NULL,
    bno CHAR(2) NOT NULL,
    borrow_date DATE,
    return_date DATE,
    loan_period INT,
    fine DECIMAL(5, 2),
    PRIMARY KEY (sno, bno),
    FOREIGN KEY (sno) REFERENCES student(sno),
    FOREIGN KEY (bno) REFERENCES book(bno)
);
INSERT INTO student (sno, sname, age, sex, dept)
VALUES
('s1', '李明', 18, '男', '计算机系'),
('s2', '王建', 18, '男', '计算机系'),
('s3', '王丽', 17, '女', '计算机系'),
('s4', '王小川', 19, '男', '数理系'),
('s5', '张华', 20, '女', '数理系'),
('s6', '李晓莉', 19, '女', '数理系'),
('s7', '赵阳', 21, '女', '外语系'),
('s8', '林路', 19, '男', '建筑系'),
('s9', '赵强', 20, '男', '建筑系');
INSERT INTO book (bno, bname, author, press, inventory, price)
VALUES
('b1', '数据通信', '赵甲', '南北出版社', 10, 28),
('b2', '数据库', '钱乙', '大学出版社', 5, 34),
('b3', '人工智能', '孙丙', '木华出版社', 7, 38),
('b4', '中外建筑史', '李丁', '木华出版社', 4, 52),
('b5', '计算机英语', '周戊', '大学出版社', 7, 25),
('b6', '离散数学', '吴已', '木华出版社', 2, 28),
('b7', '线性电子线路', '郑庚', '南北出版社', 3, 34),
('b8', '大学物理', '王辛', '南北出版社', 4, 28);
INSERT INTO borrow (sno, bno, borrow_date, return_date, loan_period, fine)
VALUES
('s1', 'b1', '2024-08-04', '2024-10-12', 60, 9.0),
('s1', 'b2', '2024-09-07', '2024-11-07', 60, 1.0),
('s1', 'b3', '2024-10-08', NULL, 60, 0.0),
('s2', 'b2', '2024-09-04', '2024-11-07', 60, 4.0),
('s3', 'b4', '2024-09-05', '2024-12-31', 60, 57.0),
('s3', 'b3', '2024-06-11', '2024-09-08', 60, 29.0),
('s4', 'b2', '2024-09-12', '2024-12-10', 60, 29.0),
('s4', 'b1', '2024-10-13', NULL, 60, 0.0),
('s5', 'b5', '2024-09-14', '2024-12-14', 30, 61.0),
('s6', 'b7', '2024-05-15', '2024-05-31', 30, 0.0),
('s7', 'b4', '2024-05-16', '2024-06-16', 60, 0.0),
('s7', 'b7', '2024-09-17', '2024-09-26', 30, 0.0),
('s9', 'b8', '2024-10-18', '2024-12-31', 60, 14.0),
('s9', 'b7', '2024-10-19', NULL, 60, 0.0);

CREATE TABLE overdue_books (sno CHAR(2), bno CHAR(2), overdue_days INT); 