CREATE DATABASE Ola;
use Ola;


## Q1: Retrive Successfull Booking
Create View Successful_B As 
SELECT * FROM booking WHERE Booking_Status = 'Success';
# -->
SELECT * FROM Sucessful_B;


## Q2: Average ride Distance for each distance
CREATE VIEW ride_dis_veh AS
SELECT Vehicle_Type, AVG(Ride_Distance) as avg_d 
FROM booking GROUP BY Vehicle_Type;
# -->
select * from ride_dis_veh;


## Q3: Total num of Canceled ride by customer
SELECT count(*) from booking
where Booking_Status = 'Canceled by Customer';


## Q4: top 10 customer who booked highest ride
SELECT Customer_ID, COUNT(Booking_ID) as total_ride FROM booking 
group by Customer_ID
order by total_ride
DESC LIMIT 10;


## Q5: num of rides canceled by drivers due to personal and car-related issue:
SELECT count(*) FROM booking
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';


## Q6: Find Maximum and Minimum driver rating for Prime-Sedan booking:
SELECT MAX(Driver_Ratings) as max_rating, MIN(Driver_Ratings) as min_rating
FROM booking WHERE Vehicle_Type = 'Prime Sedan';


## Q7: Payment by UPI
SELECT * FROM booking WHERE Payment_Method = 'UPI';
SELECT COUNT(*) FROM booking WHERE Payment_Method = 'UPI';


## Q8: Customer Rating per Vehicle Type
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_cus_rat
FROM booking GROUP BY Vehicle_Type;


## Q9: booking value of rides successfully and how many customer
SELECT SUM(Booking_Value) as successfull_val, COUNT(Booking_ID)
FROM booking WHERE Booking_Status = 'Success';


## Q10: List incomplete rides with reason
SELECT Booking_ID, Incomplete_Rides_Reason
FROM booking WHERE Incomplete_Rides = 'Yes';