/* School fire call came before any witness, police confirm

From which room of the school was the 20:58 call from the previous level made?

*/

-- checkpoint 1 , SELECT only the line and subscriber 

SELECT line, subscriber
FROM line_register

--checkpoint 1

/* 

Both tables hold the line number: source in dispatch_log, line in line_register. 
In the register, hours says when the line's telephone is in that room.

Expected result
Start from the calls, FROM dispatch_log. 
Then add JOIN line_register ON source = line: each call from a line in the register gets that line's room. 
Keep the calls of 2025-10-14. Show only the time, the line, the room and its hours.

*/

-- checkpoint 2 solution

SELECT at_time, source, room, hours
FROM dispatch_log
JOIN line_register ON source = line
WHERE on_date = '2025-10-14'


--checkponit 3 

/* Which Room
The early call came from LINE 4417 at 20:58.

Expected result
Join dispatch_log and line_register again. 
Which room was the call made from? Keep only that row, and only the columns room and at_time.  */ 

SELECT room, at_time
FROM dispatch_log
JOIN line_register ON source = line
WHERE on_date = '2025-10-14' AND at_time = '20:58' AND hours = '18:00-22:00'