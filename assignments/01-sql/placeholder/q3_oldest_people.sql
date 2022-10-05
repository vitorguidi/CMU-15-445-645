select name, died - born
	from people
	where born >= 1900
	order by died - born desc, name
	limit 20
