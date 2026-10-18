use db_school;

-- 多表连接查询

select student.sno as '学号', student.sname as '姓名', sc.degree as '考试成绩' from student join sc on student.sno = sc.sno where student.sdept = '计算机工程系' and student.ssex = '女';

select course.cname as '课程名', sc.degree as '成绩' from student join sc on student.sno = sc.sno join course on course.cno = sc.cno where student.sname = '李勇';

select course.cname as '课程名' from teacher join teaching on teaching.tno = teacher.tno join course on course.cno = teaching.cno where teacher.tname = '李新';

select course.cno as '课程号', course.cname as '课程名' from teacher join teaching on teacher.tno = teaching.tno join course on course.cno = teaching.cno where teacher.tsex = '女';

select distinct student.sname as '学生姓名' from student join sc on student.sno = sc.sno where student.ssex = '女';

select course.cname as '课程名' from student join sc on sc.sno = student.sno join course on course.cno = sc.cno where student.sname like '王%';

select distinct sc.sno as '学号', sc.degree as '成绩' from sc join course on sc.cno = course.cno where (sc.degree between 80 and 90) and course.cname = '数据库';

select s.sname as '学生姓名', sc.degree as '成绩' from student s join sc on s.sno = sc.sno join course c on sc.cno = c.cno where c.cname = '数据库' and sc.degree between 80 and 90;

select s.*, sc.cno, sc.degree from student s join sc on s.sno = sc.sno where s.ssex = '男' and sc.degree >= 60;

select avg(year(CURDATE()) - year(s.sbirthday)) as '平均年龄' from student s join sc on s.sno = sc.sno where sc.cno = 'C04';

select distinct student.sno, student.sname from student join sc on student.sno = sc.sno join course on sc.cno = course.cno where course.cname = '数学';

select teaching.cno, sc.sno, sc.degree from teacher join teaching on teacher.tno = teaching.tno join sc on teaching.cno = sc.cno where teacher.tname = '钱军';

select distinct teaching.cno, student.sname from teacher join teaching on teacher.tno = teaching.tno join sc on teaching.cno = sc.cno join student on sc.sno = student.sno where teacher.tname = '钱军';

select distinct course.cname, sc.degree from teaching join course on teaching.cno = course.cno join sc on teaching.cno = sc.cno where teaching.cterm = 3;

select student.* from student join sc on student.sno = sc.sno where sc.cno = 'C02' and sc.degree < 60;

select student.sname, student.ssex, course.cname from student join sc on student.sno = sc.sno join course on sc.cno = course.cno where student.sdept = '软件工程系' and sc.degree > 90;

SELECT s.sname, sc1.degree AS 'C04成绩', sc2.degree AS 'C02成绩' FROM student s JOIN sc sc1 ON s.sno = sc1.sno AND sc1.cno = 'C04' JOIN sc sc2 ON s.sno = sc2.sno AND sc2.cno = 'C02';

-- 嵌套查询

select course.cname as '课程名', sc.degree as '成绩' from sc join course on sc.cno = course.cno where sno = (select student.sno from student where student.sname = '李勇'); 

select cname from course where cno in (select cno from teaching where tno = (select tno from teacher where tname = '李新'));

select course.cno as '课程号', course.cname as '课程名称' from course where cno in (select teaching.cno from teaching where teaching.tno in (select teacher.tno from teacher where teacher.tsex = '女'));

select distinct cname as '课程名称' from course where cno in (select cno from sc where sno in (select sno from student where sname like "王%"));

select distinct sno as '学生学号', degree as '成绩' from sc where cno = (select cno from course where cname = '数据库') and degree between 80 and 90;

select sno as '学号', sname as '姓名' from student where sno in (select sno from sc where cno = (select cno from course where cname = '数学'));

select avg(year(CURDATE()) - year(sbirthday)) as '平均年龄' from student where sno in (select sno from sc where cno = 'C04');

select cname, degree from sc join course c on sc.cno = c.cno where c.cno in (select teaching.cno from teaching where cterm = 3);

select cno, sno, degree from sc where cno in (select cno from teaching where tno = (select tno from teacher where tname = '钱军'));

select sname as '姓名' from student where sdept = (select sdept from student where sname = '李勇') and sname != '李勇';

select sname as '姓名' from student where sno > (select sno from student where sname = '刘晨') and sbirthday < (select sbirthday from student where sname = '刘晨');

select sname as '姓名', sdept as '系别' from student where ssex = '男' and sbirthday > all(select sbirthday from student where ssex = '女');

select sno as '学号', degree as '成绩' from sc a where degree > (select AVG(degree) from sc b where a.cno = a.cno);

select tname as '教师姓名' from teacher where tno in (select tno from teaching where cno != 'C01');

select * from student where sno in (select sno from sc where degree < 60 and cno = 'C02');

select sno as '学号', sname as '姓名' from student where sno not in (select sno from sc where cno = 'C02');

select sno as '学号', sname as '姓名', sdept as '系别' from student where sno in (select sno from sc where cno = (select cno from course where cname = '数据库'));