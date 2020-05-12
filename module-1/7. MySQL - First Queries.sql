-- 1 What are the different genres? 
SELECT DISTINCT
    (prime_genre)
FROM
    IHAMSFT.app;
    
-- 2 Which is the genre with the most apps rated?
SELECT 
    prime_genre, sum(rating_count_tot)
FROM
    IHAMSFT.app
GROUP BY prime_genre 
ORDER BY sum(rating_count_tot) DESC
LIMIT 1;

--  3 Which is the genre with most apps?
SELECT 
    prime_genre, COUNT(id)
FROM
    IHAMSFT.app
GROUP BY prime_genre 
ORDER BY COUNT(id) DESC
LIMIT 1;

-- 4. Which is the one with least?
SELECT 
    prime_genre, COUNT(id)
FROM
    IHAMSFT.app
GROUP BY prime_genre
ORDER BY COUNT(id) ASC
LIMIT 1;

-- 5. Find the top 10 apps most rated.
SELECT 
    track_name,user_rating,rating_count_tot
FROM
    IHAMSFT.app
ORDER BY rating_count_tot DESC
LIMIT 10;

-- 6. Find the top 10 apps best rated by users.
SELECT 
    track_name, user_rating
FROM
    IHAMSFT.app
ORDER BY user_rating DESC
LIMIT 10;

-- 11.
-- a)
SELECT 
    SUM(rating_count_tot)
FROM
    IHAMSFT.app
WHERE
    price = 0;
-- b)

SELECT 
    SUM(rating_count_tot)
FROM
    IHAMSFT.app
WHERE
    price > 0;

-- c)
SELECT 
    AVG(user_rating)
FROM
    IHAMSFT.app
WHERE
    price > 0
ORDER BY price DESC;

-- d)
SELECT 
    AVG(user_rating)
FROM
    IHAMSFT.app
WHERE
    price = 0
ORDER BY price DESC;

-- e)
SELECT 
    price, AVG(rating_count_tot), AVG(user_rating), COUNT(*)
FROM
    IHAMSFT.app
GROUP BY price
ORDER BY price ASC;

-- f)
SELECT 
    price,
    COUNT(*) AS number_of_apps,
    ROUND(AVG(rating_count_tot)) AS rating_count_avg,
    ROUND(AVG(user_rating), 1) AS user_rating_avg
FROM
    IHAMSFT.app
GROUP BY price
ORDER BY price ASC;