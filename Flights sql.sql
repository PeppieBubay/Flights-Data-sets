CREATE TABLE flights(
	flight_id INT PRIMARY KEY,
    actual_arrival_time VARCHAR(50),
    actual_flight_time INT(50),
    actual_departure_time VARCHAR(50),
    air_time INT(50),
    air_traffic_delay INT(50),
    airline_code VARCHAR(50),
    airline_name VARCHAR(100),
    arrival_delay INT(50),
    cancellation_reason VARCHAR(100),
    carrier_delay INT(50),
    day DATE,
    departure_delay INT(50),
    destination_airport VARCHAR(50),
    destination_city VARCHAR(100),
    destination_state VARCHAR(50),
    distance FLOAT,
    flight_number VARCHAR(50),
    late_aircraft_delay INT(50),
    origin_airport VARCHAR(50),
    origin_city VARCHAR(100),
    origin_state VARCHAR(50),
    scheduled_arrival_time VARCHAR(50),
    scheduled_departure_time VARCHAR(50),
    scheduled_flight_time INT(50),
    security_delay INT(50),
    was_cancelled BOOLEAN,
    weather_delay INT(50),
    wheels_off_time VARCHAR(50),
    wheels_on_time VARCHAR(50),
    day_of_week VARCHAR(50)
);

select *
from flights;

select flight_id,airline_name,airline_code,origin_airport,flight_number,origin_city,origin_state
from flights;

select *
from flights
where origin_city = 'New York'
limit 10;

select *
from flights
where day_of_week <> 'Sunday';

select *
from flights
where air_traffic_delay <> "arrival_delay" ;

select *
from flights
where flight_number between '2500' and '3000';

select distinct airline_name as airline_names
from flights;

select count(distinct airline_name) as count_of_airline
from flights;

select *
from flights
where airline_name = 'Hawaiian Airlines Inc.' and destination_city != 'Pago Pago';

select count(destination_city)
from flights
where destination_city = 'Pago Pago';


select avg(distance)
from flights;

select airline_name,destination_city,sum(distance) as total_distance
from flights
group by airline_name, destination_city
having sum(distance) > 5000;

