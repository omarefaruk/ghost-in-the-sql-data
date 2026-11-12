/*Now we need to find who called from the Lodge, and where he went before calling*/

/*they were at the Lodge at 20:58*/

/*We have every employee's badge logs: when someone goes in through a door, 
a row shows up in keycard_log. Everyone must pass through the Main Gate to enter and exit.

Expected result
At 20:58 the school is supposed to be closed; only a few employees should still be inside. 
Let's try to find the last person who left the school. On 2025-10-14, through the Main Gate, 
use ORDER BY at_time DESC to order rows from last to first. 
Use LIMIT 1 to return only the first row of the table. */

/*Checkpoint 1*/ 

SELECT holder, door, at_time
FROM keycard_log
WHERE door = 'Main Gate' AND on_date = '2025-10-14'
ORDER BY at_time DESC

/*checkpoint 2 */

SELECT holder, at_time
FROM keycard_log
WHERE door = 'Lodge' AND on_date = '2025-10-14' AND at_time < '20:58'
ORDER BY at_time DESC
LIMIT 1