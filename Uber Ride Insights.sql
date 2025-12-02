select * from u1;
select * from u2;
select * from u3;

#que 1

select distinct pickup_location from u2;
select count(distinct pickup_location) from u2;

#que 2

select count(*) from u2;

# que 3 
 
select avg(ride_duration) from u2;

# 	que 4
 
select driver_id, earnings from u3
order by earnings desc
limit 5;

SELECT driver_id, SUM(earnings) AS total_earnings 
FROM u3
GROUP BY driver_id 
ORDER BY total_earnings DESC LIMIT 5;

# que 5
select payment_method, count(*) from u2
group by payment_method;

# que 6
select * from u2 
where fare_amount>20;

# que 7
select pickup_location, count(*) ride_count from u2
group by pickup_location
order by ride_count desc 
limit 1;

# que 8 

select avg(fare_amount) from u2;

#que 9
select driver_id, avg(rating) as R from u3
group by driver_id
order by R desc
limit 10;

#que 10
select sum(earnings) from u3;

# que 11
select count(*) from u2
where payment_method = 'cash';

#que 12
select pickup_location, count(*), avg(ride_distance) from u2
where pickup_location= 'dhanbad'
group by pickup_location;

#que 13
select * from u2
where ride_duration< '10 minutes';

#que 14
select passenger_name, total_rides as R from u1
order by R desc
limit 1;

SELECT passenger_id, COUNT(*) AS ride_count 
FROM u1 GROUP BY passenger_id 
ORDER BY ride_count DESC LIMIT 1;

#que 15
select driver_name, count(*) as rides from u3
group by driver_name
order by rides desc;

SELECT driver_id, COUNT(*) AS ride_count 
FROM u3
GROUP BY driver_id 
ORDER BY ride_count DESC;

#que 16
select distinct payment_method from u2
where pickup_location="gandhinagar"

# que 17
select avg(fare_amount) from u2
where ride_distance>10;

#que 18
select driver_id, total_rides from u3
order by total_rides desc;

#que 19
SELECT pickup_location, COUNT(*) AS ride_count, ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM u2), 2) AS percentage 
FROM u2 
GROUP BY pickup_location
order by percentage desc;


#que 20
select * from u2
where pickup_location = dropoff_location;

# que 21
select passenger_id, count(distinct pickup_location) location from u2 
group by passenger_id
having location>=300;

#que 22 query
SELECT AVG(fare_amount)
FROM u2 
WHERE DAYOFWEEK(STR_TO_DATE(ride_timestamp, '%m/%d/%Y %H:%i'))>5;

#que 23
select distinct driver_id, ride_distance from u2
where ride_distance>19;

#que 24

select driver_id, sum(earnings)  from u3 
where total_rides>100
group by driver_id;


#que 25
SELECT * 
FROM u2
WHERE fare_amount < (SELECT AVG(fare_amount) FROM u2 );

#que 26
select u3.driver_id, avg(rating) as avg_rating 
from u3 inner join u2
on u3.driver_id = u2.driver_id 
where u2.payment_method in ("Cash", "Credit Card")
group by u3.driver_id
having count(distinct u2.payment_method)=2;

#que 27
select u1.passenger_id, u1.passenger_name, sum(u2.fare_amount) as amount
from u1 inner join u2
on u1.paSSENGER_ID = u2.passenger_id 
group by passenger_id, passenger_name
order by amount desc
limit 3;

#que 29
SELECT pickup_location, dropoff_location, COUNT(*) AS ride_count
FROM u2
GROUP BY pickup_location, dropoff_location
order by ride_count desc
limit 1;













