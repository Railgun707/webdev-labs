-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name from users ORDER BY last_name;



-- Exercise 4
SELECT id, user_id, image_url from posts where user_id = 26;



-- Exercise 5
SELECT id, image_url, user_id from posts where user_id = 26 or user_id = 12;



-- Exercise 6
SELECT COUNT(*) from posts;


-- Exercise 7
SELECT user_id, COUNT(*) as count from comments group by user_id order by count DESC;



-- Exercise 8
SELECT posts.id, posts.image_url, posts.user_id, 
users.username, users.first_name, users.last_name 
from posts join users on posts.user_id = users.id 
where posts.user_id = 26 or posts.user_id = 12;


-- Exercise 9
SELECT posts.id, posts.pub_date, following.following_id 
from posts join following on 
posts.user_id = following.following_id
where following.user_id = 26; 


-- Exercise 10
SELECT posts.id, posts.pub_date, following.following_id ,
users.username from posts join following on 
posts.user_id = following.following_id join users on
users.id = posts.user_id where following.user_id = 26
order by posts.pub_date DESC; 

-- Exercise 11
INSERT into bookmarks(user_id, post_id) values (26, 219);
INSERT into bookmarks(user_id, post_id) values (26, 220);
INSERT into bookmarks(user_id, post_id) values (26, 221);

-- Exercise 12
DELETE from bookmarks where post_id = 219 and user_id = 26;
DELETE from bookmarks where post_id = 220 and user_id = 26;
DELETE from bookmarks where post_id = 221 and user_id = 26;


-- Exercise 13
UPDATE users SET email = 'cyoung2022@gmail.com' where users.id = 26;

-- Exercise 14
SELECT posts.id, posts.user_id, COUNT(comments.post_id) as count, 
posts.caption from posts join comments on
posts.id = comments.post_id where posts.user_id= 26 
group by posts.id order by count DESC;
