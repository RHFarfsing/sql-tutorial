--select * from student where gpa < 3.0 order by sat desc
--select *from student
--select *from major
select student.id,concat(firstname,' ',lastname)as 'name',sat,gpa,isnull(description, 'Undecided')as 'major',isnull(minsat,'') as 'min sat required'
from student
left join major
on major.id = student.majorid