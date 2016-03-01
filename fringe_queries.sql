SELECT name From users; -- question 1
SELECT name FROM shows WHERE price < 15; --question 2
INSERT INTO "users" (name) VALUES ('Val Gibson'); -- question 3
SELECT id FROM users WHERE name = 'Val Gibson'; --question 4
INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 5);-- question 5
UPDATE users SET name = 'Valerie Gibson' WHERE name = 'Val Gibson'; -- question 6
DELETE FROM users WHERE name = 'Valerie Gibson';-- question 7
DELETE FROM shows_users WHERE user_id = 5; --question 8
SELECT name, price from shows order by price asc; --question 9
SELECT avg(price) from shows; --question 10 answer 15.96
SELECT min(price) from shows; --question 11 answer 6.00
SELECT SUM(price) from shows; --question 12 answer 207.44
SELECT SUM(price) from shows where price < 20; --question 13 answer 142.25
SELECT name, max(price) from shows group by name, price order by price desc limit 1; -- Tattoo
SELECT name, price from shows where price > min(price) order by price asc limit 1; --hmmmmmm STILL CANT GET THIS ONE!!!!!!!
SELECT name from users where name = 'N*'; -- question 16 answer = 0
SELECT name from users where name = '%mi%'; --- answer 0

SELECT times.time from times
inner join shows on
times.id = shows.id
where shows.id = 8; -- return s 22:00


Select users.name from users
inner join shows_users on
shows_users.user_id = users.id
where shows_users.show_id  = 2; --returns 0

SELECT users.name from users
inner join shows_users on
shows_users.user_id = users.id; -- Rick Henry, Jay Chetty

SELECT users.name from users
inner join times on
shows_users.show_id = times.show_id 
where times.time = '17:15';       -- just cant quite get this one: off to bed!!!
