ALTER TABLE yelp_db.user
Change id user_id varchar(100);

ALTER TABLE yelp_db.business
Change id business_id varchar(100);

ALTER TABLE yelp_db.review
Change id review_id varchar(100);

ALTER TABLE yelp_db.user
Change useful Tuseful integer;

ALTER TABLE yelp_db.user
Change funny Tfunny integer;

ALTER TABLE yelp_db.user
Change cool Tcool integer;


SELECT U.user_id, U.review_count, R.review_id, R.business_id, R.stars, R.date, R.text, R.useful, R.funny, R.cool, B.stars AS Bstars, P.id AS Pid, P.label
FROM yelp_db.user AS U, yelp_db.review AS R, yelp_db.business AS B, yelp_db.photo AS P
WHERE U.user_id = R.user_id
AND R.business_id = B.business_id
AND B.business_id = P.business_id
AND U.review_count >= 100
AND (U.Tuseful + U.Tfunny + U.Tcool + U.fans) >= 100 ;
