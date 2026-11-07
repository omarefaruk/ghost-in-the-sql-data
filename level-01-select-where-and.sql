-- chapter 1 , single-line comment: everything after the two dashes is ignored. 

/* Criminal fire destroys science wing at College Jean Moulin 
Which call reported the school fire before the first wirness saw it?
*/ 

-- Identifying the call before the first fire

--checkpoint 1 

SELECT *
FROM dispatch_log

/* Multi-line comment:
   good for explaining a whole query,
   like which level this solves */

-- checkpoint 2 - finding what date   

SELECT *
FROM dispatch_log
WHERE on_date = '2025-10-14'

/* checkpoint 3 - on this game it is good to remember every sentence spoken is a clue
on how to write the query*/

SELECT *
FROM dispatch_log
WHERE on_date = '2025-10-14' AND kind = 'Phone Call' AND subject = 'Fire'
AND site = 'College Jean Moulin' and at_time < '21:12'