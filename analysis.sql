#to retrieve all data from the table.
select * from zomato_data;

#number of rows
SELECT
COUNT(*) AS Number_Of_Rows
FROM
zomato_data;

#top 5 most voted hotels in the delivery category.
SELECT 
name,votes,rating
 from zomato
 where type="Delivery"
 order by 2
 DESC limit 5
 
 #average rating of all the listings of zomato present in mumbai.
SELECT ROUND(AVG(aggregate_rating),2) AS avg_rating
FROM zomato_data
WHERE Locality="mumbai";

#different localities where zomato is spread across.
SELECT COUNT(DISTINCT(locality)) AS No_of_localities
FROM zomato_data;

#Top 10 restauraunt chains in mumbai.
SELECT name, COUNT(*) AS No_of_outlets
FROM zomato_data
GROUP BY name
ORDER BY No_of_outlets DESC
LIMIT 10;

#top 5 best casual dining places.
SELECT DISTINCT(name), aggregate_rating AS rating
FROM zomato_data
WHERE establishment = "['Casual Dining']"
ORDER BY rating DESC
LIMIT 5;

