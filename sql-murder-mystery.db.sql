SELECT *
FROM crime_scene_report
WHERE type = 'murder' AND city = 'SQL City' AND date = 20180115

--Security footage shows that there were 2 witnesses. The first witness lives at the last house on "Northwestern Dr". 
--The second witness, named Annabel, lives somewhere on "Franklin Ave".

SELECT id, name, address_street_name, address_number
FROM person
WHERE 
    (address_street_name = 'Northwestern Dr' AND address_number = (
        SELECT MAX(address_number)
        FROM person
        WHERE address_street_name = 'Northwestern Dr'
    ))
    OR
    (name LIKE '%Annabel%' AND address_street_name = 'Franklin Ave')

SELECT *
FROM interview
WHERE person_id = 14887 OR person_id = 16371
--I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z". 
--Only gold members have those bags. The man got into a car with a plate that included "H42W".
--I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th.

SELECT gc.check_in_date, d.id AS license_id, d.plate_number, p.id AS person_id, p.name
FROM (
    SELECT c.*
    FROM get_fit_now_check_in c
    JOIN get_fit_now_member m ON c.membership_id = m.id
    WHERE m.id LIKE '%48Z%' 
      AND m.membership_status = 'gold'
) AS gc
LEFT JOIN get_fit_now_member g ON gc.membership_id = g.id
LEFT JOIN person p ON g.person_id = p.id
LEFT JOIN drivers_license d ON p.license_id = d.id
WHERE d.plate_number LIKE '%H42W%' 
  AND gc.check_in_date LIKE '%0109%';
  
SELECT *
FROM interview
WHERE person_id = 67318

--I was hired by a woman with a lot of money. 
--I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). 
--She has red hair and she drives a Tesla Model S. I know that she attended the SQL Symphony Concert 3 times in December 2017.

SELECT i.*, p.id, p.name, d.height, d.hair_color,d.gender, d.car_make, d.car_model
FROM drivers_license d
JOIN person p
ON p.license_id = d.id
JOIN income i 
ON p.ssn = i.ssn
JOIN facebook_event_checkin f
ON p.id = f.person_id 
WHERE d.height > 65 AND d.height < 68 AND d.hair_color = 'red' AND d.gender = 'female' AND 
d.car_make = 'Tesla' 










  








