SELECT DISTINCT U.user_id,  R.review_id, R.business_id, R.stars, R.date,  P.id AS Pid
FROM yelp_db.user AS U, yelp_db.review AS R, yelp_db.business AS B, yelp_db.photo AS P
WHERE U.user_id = R.user_id
AND R.business_id = B.business_id
AND B.business_id = P.business_id
AND U.review_count >= 100
AND (U.Tuseful + U.Tfunny + U.Tcool + U.fans) >= 100;
-- INTO OUTFILE '/usr/local/mysql/data/test.csv'
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n';