#save as join_cmd.sql
use busa;
select a.gene,function_1,metabolism,value 
from annotation a 
join expression e 
where a.gene = e.gene;
