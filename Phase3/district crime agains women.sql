-- 3.1 -- Insert records from 42_District_wise_crimes_committed_against_women_2001_2012.csv into a table.

use crime_against_women;
select * from district_wise_crime_2001_2012;

SELECT STATE_UT,district,Year, MAX(Rape) AS Max_Rapes, MAX(Kidnapping_and_Abduction) 
AS Max_Kidnappings FROM district_wise_crime_2001_2012 GROUP BY STATE_UT,Year;

-- QNO - 3.2	Write SQL query to 
-- find the highest number of rapes & Kidnappings that happened in which state, and year.

SELECT STATE_ut,district,Year,Rape,kidnapping_and_abduction FROM district_wise_crime_2001_2012
ORDER BY Rape DESC;

-- QNO - 3.3   	 Write SQL query to 
-- find All the lowest number of rapes & Kidnappings that happened in which state, and year.

SELECT STATE_UT, YEAR, RAPE, KIDNAPPING_AND_ABDUCTION FROM district_wise_crime_2001_2012
ORDER BY RAPE ASC;

-- 3.8.3 - Store the above data (the result of 3.2) in DataFrame and analyze districts that 
		-- appear 3 or more than 3 years and print the corresponding state/UT, district, murders, and year 
		-- in descending order.
	
select * from women_crime;

SELECT STATE_UT, DISTRICT, rape, YEAR FROM women_crime 
order BY STATE_UT DESC, DISTRICT ASC, YEAR DESC;
  
 