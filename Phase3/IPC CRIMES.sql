-- 3.8.1 -- Insert records of STATE/UT, DISTRICT, YEAR, MURDER, ATTEMPT TO MURDER, and RAPE columns 
		  -- only from 01_District_wise_crimes_committed_IPC_2001_2012.csv into a new table.

create database IPC_Crimes2001_2012;
use IPC_Crimes2001_2012;

select * from 01_district_wise_crimes_committed_ipc_2001_2012;


-- 3.8.2 - Write SQL query to find which District in each state/UT 
		-- has the highest number of murders year wise. Your output should 
		-- show STATE/UT, YEAR, DISTRICT, and MURDERS.
        
SELECT state_ut, year, district,MAX(murder)
FROM 01_district_wise_crimes_committed_ipc_2001_2012
GROUP BY state_ut, year,district
order by max(murder) desc;

        



