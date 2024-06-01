select concat(YEAR(trans_date ),'-', 
Case when MONTH(trans_date)<10 then concat('0',MONTH(trans_date)) else MONTH(trans_date) end) month , country , 
count(state) trans_count, ifnull(count(case when state='approved' then state end),0) approved_count, sum(amount) trans_total_amount, 
ifnull(sum(case when state='approved' then amount end ),0) approved_total_amount from Transactions t group by country , month ; 