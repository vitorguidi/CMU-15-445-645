select primary_title, premiered, runtime_minutes from titles where genres like "%Sci-Fi%" order by runtime_minutes desc limit 10
