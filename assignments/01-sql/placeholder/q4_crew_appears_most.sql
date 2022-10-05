select name, count(*) as cnt from people inner join crew on crew.person_id=people.person_id group by crew.person_id order by cnt DESC limit 20;
