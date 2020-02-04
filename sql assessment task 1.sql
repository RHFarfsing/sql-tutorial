select * from majorclassrel mcr
join major m on m.id=mcr.majorid
join class c on c.id=mcr.classid;

select m.Description from majorclassrel mcr
join major m on m.id=mcr.majorid
join class c on c.id=mcr.classid
where m.Description='accounting';

select m.Description,c.subject from majorclassrel mcr
join major m on m.id=mcr.majorid
join class c on c.id=mcr.classid
where m.Description='accounting';