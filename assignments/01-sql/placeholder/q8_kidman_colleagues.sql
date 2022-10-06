with kmovies as (
	select distinct crew.title_id 
		from people join crew on people.person_id = crew.person_id 
		where people.name like "%Nicole Kidman%" and people.born = 1967)

select distinct people.name
        from crew join people on crew.person_id = people.person_id
        where crew.title_id in (select title_id from kmovies) and (crew.category like "%actor%" or crew.category like "%actress%")
        order by people.name;
