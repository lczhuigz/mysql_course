use db_school;

select student.sno as '学号', student.sname as '姓名', sc.degree as '考试成绩' from student join sc on student.sno = sc.sno where student.sdept = '计算机工程系' and student.ssex = '女';

select course.cname as '课程名', sc.degree as '成绩' from student join sc on student.sno = sc.sno join course on course.cno = sc.cno where student.sname = '李勇';

select course.cname as '课程名' from teacher join teaching on teaching.tno = teacher.tno join course on course.cno = teaching.cno where teacher.tname = '李新';