create database Flights;
CREATE TABLE flight (
	flight_id INT PRIMARY KEY,
    actual_arrival_time VARCHAR(20),
    actual_flight_time INT(20),
    actual_departure_time VARCHAR(20),
    air_time INT(20),
    air_traffic_delay INT(20),
    airline_code VARCHAR(10),
    airline_name VARCHAR(100),
    arrival_delay INT(20),
    cancellation_reason VARCHAR(100),
    carrier_delay INT(20),
    day DATE,
    departure_delay INT(20),
    destination_airport VARCHAR(10),
    destination_city VARCHAR(100),
    destination_state VARCHAR(20),
    distance FLOAT,
    flight_number VARCHAR(20),
    late_aircraft_delay INT(20),
    origin_airport VARCHAR(10),
    origin_city VARCHAR(100),
    origin_state VARCHAR(20),
    scheduled_arrival_time VARCHAR(20),
    scheduled_departure_time VARCHAR(20),
    scheduled_flight_time INT(20),
    security_delay INT(20),
    was_cancelled BOOLEAN,
    weather_delay INT(20),
    wheels_off_time VARCHAR(20),
    wheels_on_time VARCHAR(20),
    day_of_week VARCHAR(20)
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

