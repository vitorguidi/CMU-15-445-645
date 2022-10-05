select cast(((premiered-10)/10+1)*10 as text) || "s" as decade, round(avg(rating),2) as avg_rating, max(rating) as top_rating, min(rating) as min_rating, count(titles.title_id) as nr_releases
        from titles join ratings on ratings.title_id = titles.title_id
	where premiered is not null

        group by decade
        order by avg_rating desc, decade;

