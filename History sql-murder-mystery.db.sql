--- 02-07-2024 19:59:30
--- sql-murder-mystery.db
SELECT *
FROM crime_scene_report
WHERE type = 'murder' AND date = 20180115 AND city = 'SQL City';

--- 02-07-2024 19:59:47
--- sql-murder-mystery.db
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: near "SELECT": syntax error
 ----- 
SELECT p.id, p.name, d.height, d.hair_color,d.gender, d.car_make, d.car_model
FROM drivers_license AS d
JOIN person AS p
ON p.license_id = d.id
JOIN facebook_event_checkin AS f
ON p.id = f.person_id 
WHERE d.height > 65 AND d.height < 68 AND d.hair_color = 'red' AND d.gender = 'female' AND d.car_make = 'Tesla' 
SELECT *
FROM solution;
*****/

--- 02-07-2024 19:59:57
--- sql-murder-mystery.db
SELECT *
FROM crime_scene_report
WHERE type = 'murder' AND date = 20180115 AND city = 'SQL City';

--- 02-07-2024 20:00:06
--- sql-murder-mystery.db
SELECT id,name, address_street_name, address_number, MAX(address_number)
FROM person
WHERE address_street_name = 'Franklin Ave' AND name LIKE '%Annabel%'
UNION
SELECT id, name, address_street_name, address_number, MAX(address_number)
FROM person
WHERE address_street_name = 'Northwestern Dr';

--- 02-07-2024 20:00:49
--- sql-murder-mystery.db
SELECT *
FROM interview
WHERE person_id = 14887 OR person_id = 16371;

--- 02-07-2024 20:00:56
--- sql-murder-mystery.db
SELECT id,person_id,name,membership_status
FROM get_fit_now_member
WHERE membership_status = 'gold' AND id LIKE '48z%';

--- 02-07-2024 20:01:01
--- sql-murder-mystery.db
SELECT *
FROM get_fit_now_check_in
WHERE membership_id = '48Z7A' OR membership_id = '48Z755';

--- 02-07-2024 20:01:07
--- sql-murder-mystery.db
SELECT d.id AS licenceId, d.plate_number, p.id AS personId, p.name,g.id AS memberId, gc.check_in_date
FROM drivers_license AS d
LEFT JOIN person AS p
ON d.id = p.license_id
LEFT JOIN get_fit_now_member AS g
ON p.id = g.person_id
left JOIN get_fit_now_check_in AS gc
ON g.id = gc.membership_id
WHERE d.plate_number LIKE '%H42W%' AND g.membership_status = 'gold' 
AND gc.check_in_date LIKE '%0109%';

--- 02-07-2024 20:01:13
--- sql-murder-mystery.db
SELECT *
FROM interview
WHERE person_id = 67318;

--- 02-07-2024 20:01:20
--- sql-murder-mystery.db
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: near "SELECT": syntax error
 ----- 
SELECT p.id, p.name, d.height, d.hair_color,d.gender, d.car_make, d.car_model
FROM drivers_license AS d
JOIN person AS p
ON p.license_id = d.id
JOIN facebook_event_checkin AS f
ON p.id = f.person_id 
WHERE d.height > 65 AND d.height < 68 AND d.hair_color = 'red' AND d.gender = 'female' AND d.car_make = 'Tesla' 
SELECT *
FROM solution;
*****/

--- 02-07-2024 20:05:14
--- sql-murder-mystery.db
SELECT *
FROM interview
WHERE person_id = 67318;

--- 02-07-2024 20:06:29
--- sql-murder-mystery.db
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: unrecognized token: "'Tesla"
 ----- 
SELECT p.id, p.name, d.height, d.hair_color,d.gender, d.car_make, d.car_model
FROM drivers_license AS d
JOIN person AS p
ON p.license_id = d.id
JOIN facebook_event_checkin AS f
ON p.id = f.person_id 
WHERE d.height > 65 AND d.height < 68 AND d.hair_color = 'red' AND d.gender = 'female' AND d.car_make = 'Tesla;
*****/

--- 02-07-2024 20:06:39
--- sql-murder-mystery.db
SELECT p.id, p.name, d.height, d.hair_color,d.gender, d.car_make, d.car_model
FROM drivers_license AS d
JOIN person AS p
ON p.license_id = d.id
JOIN facebook_event_checkin AS f
ON p.id = f.person_id
WHERE d.height > 65 AND d.height < 68 AND d.hair_color = 'red' AND d.gender = 'female' AND
d.car_make = 'Tesla';

--- 02-07-2024 20:07:16
--- sql-murder-mystery.db
SELECT p.id, p.name, d.height, d.hair_color,d.gender, d.car_make, d.car_model
FROM drivers_license AS d
JOIN person AS p
ON p.license_id = d.id
JOIN facebook_event_checkin AS f
ON p.id = f.person_id
WHERE d.height > 65 AND d.height < 68 AND d.hair_color = 'red' AND d.gender = 'female' AND
d.car_make = 'Tesla';

--- 02-07-2024 20:07:24
--- sql-murder-mystery.db
SELECT *
FROM solution;

--- 02-07-2024 20:07:34
--- sql-murder-mystery.db
SELECT p.id, p.name, d.height, d.hair_color,d.gender, d.car_make, d.car_model
FROM drivers_license AS d
JOIN person AS p
ON p.license_id = d.id
JOIN facebook_event_checkin AS f
ON p.id = f.person_id
WHERE d.height > 65 AND d.height < 68 AND d.hair_color = 'red' AND d.gender = 'female' AND
d.car_make = 'Tesla';

