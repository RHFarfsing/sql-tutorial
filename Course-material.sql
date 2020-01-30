select s.id as 'Student Id', concat(s.firstname,' ',s.lastname)as 'Name',
		c.id as 'Course Number', concat(c.subject,' ',c.section)as 'Class',
		concat(i.firstname,' ',i.lastname)as 'Instructor',
		m.description as 'Major'
     from student s 
	 join StudentClassRel scr
	    on s.id = scr.StudentId
	join class c
		on scr.classid = c.id
	join instructor i
		on i.id = c.instructorid
	join major m
		on m.id = s.majorid