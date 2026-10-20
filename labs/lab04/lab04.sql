use db_school;

-- 数据更新操作练习

insert into Student (sno, sname, sbirthday, ssex, sdept, speciality) 
values('20050203', '张静', '1981-03-21', '女', 'CS', '电子商务');

insert into Student (sno, sname) 
values('20050302', '李四');

update Student 
set sname = '张华', sdept = 'CS', speciality = '多媒体技术' 
where sno = '20050202';

update student
set speciality = '计算机信息管理'
where sname = '李勇';

delete from student where sno = '20050302';

delete from sc where sno in (select sno from student where sdept = '计算机系');

delete from sc where degree is NULL;

delete from sc where sno in (select sno from student where sname = '张晨');

-- 数据表索引和约束的练习

create table writers (
    id int(10) not null,
    w_name varchar(20) not null,
    w_address varchar(50),
    w_age int not null,
    w_note text,
    primary key (id),
    unique index uniquex (id)
);

create index multiidx on writers(w_address, w_age);

create index ftidx on writers(w_name); 
alter table writers drop index ftidx;

create index nameidx on writers(w_name);
drop index nameidx on writers;