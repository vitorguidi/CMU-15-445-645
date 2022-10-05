select primary_title, votes
	from titles t2 join ratings r2 on r2.title_id = t2.title_id
        where t2.title_id in (
		select distinct title_id 
			from crew c1 join people p1 on c1.person_id = p1.person_id
			where p1.name like "%cruise%" and p1.born=1962)
	order by votes desc
	limit 10;

