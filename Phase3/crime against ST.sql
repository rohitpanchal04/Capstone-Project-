-- 3.4 -- Insert records from 
	   -- 02_District_wise_crimes_committed_against_ST_2001_2012.csv into a new table

create database crime_against_ST;
use crime_against_st;
 
select * from crime_against_st2001_2012;

-- Q.no 3.5 - Write SQL query to find the highest number of dacoity/robbery in which district.

select district, dacoity, robbery from crime_against_st2001_2012
order by robbery desc limit 1;

-- Qno 3.6 - Write SQL query to find in which districts(All) the lowest number of murders happened.

select district ,murder from crime_against_st2001_2012
order by murder limit 1;

-- Wno 3.7 - Write SQL query to find the number of murders in ascending order in district and year wise.

select murder, district, year from crime_against_st2001_2012
order by murder asc;
 
