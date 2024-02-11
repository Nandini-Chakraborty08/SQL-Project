create database flight_fare;
use flight_fare;
create table data_train
(Airline char(40),
	Date_of_Journey char(30),
	Source char(30),
	Destination char(40),
	Route char(40),
    Dep_Time char(30),
    Arrival_Time char(30),	
    Duration char(30),
    Total_Stops	char(20),
    Additional_Info char(20),	
    Price int
    );
    select * from data_train;
    select * from data_train
    limit 10;
    create table test_set
    (Airline char(30),
	Date_of_Journey char(30),
	Source char(30),
	Destination char(30),
	Route char(40),
	Dep_Time char(50),
	Arrival_Time char(40),
	Duration char(40),
	Total_Stops char(20),
	Additional_Info char(50)
    );
select * from test_set;
/*distinct list of airlines*/
select distinct airline
from data_train;
/*distinct list of source*/
select distinct source
from data_train;
/*distinct list of flights*/
select distinct destination
from data_train;
/*how many flighs of airlines take off from each city and sort the data by number of airlines*/
select source, count(airline) as cntairline
from data_train
group by source
order by 2  desc;
/*how many flighs of airlines landed in each city and sort the data by number of flights*/
select destination, count(airline) as cntairline
from data_train
group by destination
order by 2  desc;
select avg(price) as avgp, airline
from data_train
group by airline
order by avg(price);


