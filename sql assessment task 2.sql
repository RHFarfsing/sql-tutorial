select * from Instructor i
join class c on c.InstructorId=i.Id; 

select i.Lastname, c.Subject from Instructor i
join class c on c.InstructorId=i.id;

select i.Lastname,c.InstructorId ,count(c.Subject) as 'Total Classes' from Instructor i
join class c on c.InstructorId=i.id
group by i.lastname,c.instructorid,c.subject
having c.instructorid=(select count(c.subject));