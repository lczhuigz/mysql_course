-- 使用数据库db_school
use db_school;

select * from student;

select sno, sname, ssex, sbirthday from student;

select cname from course;

select cno, cname from course limit 10;

select sname, (year(CURDATE()) - year(sbirthday)) as '年龄' from student;

select sno as '学号', sname as '姓名' from student where ssex = '女' and (year(CURDATE()) - year(sbirthday)) > 18;

select * from student where ssex = '男';

select tname as '教师姓名', tdept as '所在系别' from teacher;

select sname as '学生姓名', ssex as '性别', sbirthday as '出生日期' from student where speciality = '电子商务';

select distinct sdept as '系名' from student;

select cterm as '开课学期' from teaching where cno = 'C01';

select sno as '学生学号', cno as '课号' from sc where  degree between 80 and 90;

select * from teacher where tsex = '男' and tbirthday < '1970-01-01';

select distinct sno as '学号' from sc where degree is not null;

select * from student where sname like '刘%'

select * from student where saddress not like '山东%';

select * from sc where degree in (79,89,99);

select sname, saddress from student where ssex = '男' and sname like '_小%';

select cname from course where cname like '计算机%';

select * from student where sdept in ('计算机工程系','软件工程系');

select count(distinct cno) as '课程门数' from sc;

select avg(degree) as '平均成绩' from sc where cno = 'C01';

select sno as '学号', degree as '成绩' from sc where cno = 'C03' order by degree desc;

select cno as '课程号', count(*) as '选课人数' from sc group by cno;

select cno as '课程号', count(*) as '选课人数', max(degree) as '最高分' from sc group by cno;

select sno as '学号', count(cno) as '选课门数', sum(degree) as '总成绩' from sc group by sno order by count(cno) DESC;

select sno as '学号' from sc group by sno having count(cno) > 3;

select sno as '学号', cno as '课程号' from sc where degree < 60 order by degree DESC;

select distinct sno as '学号' from sc;

select sdept as '系名', count(*) as '人数' from student group by sdept;

select sdept as '系名', ssex as '性别', count(*) as '人数' from student group by sdept, ssex;

select speciality as '班级', count(*) as '人数' from student group by speciality;