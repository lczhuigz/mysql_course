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

-- 视图的管理

create view sc_view1 as select * from sc where degree > 90;

create view sc_view2 as select sno, cno, degree from sc where degree < 80; 

create view sc_view3 as select s.sname, c.cname, sc.degree from student s join sc on s.sno = sc.sno join course c on sc.cno = c.cno where s.speciality = '20070303';

create view sc_view4 as select * from sc_view1 where cno = 'C01';

alter view sc_view1 as select sc.* from sc join teaching t on sc.cno = t.cno where sc.degree > 90 and t.cterm = 3;

drop view sc_view1;

select * from sc_view2 where sno = '2007030125' and cno = 'A01';

update sc_view2 set degree = '87' where sno = '2007030122' and cno = 'c02';

delete from sc_view2 where sno = '2007030123' and cno = 'a01';