select  count(primary_title) from titles t1 where t1.premiered in (select premiered from titles t2 where t2.primary_title="Army of Thieves");
