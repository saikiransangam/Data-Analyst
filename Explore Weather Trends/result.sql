/* Select Local Temperature */
SELECT * FROM city_list WHERE country = 'United States';

To visualize city_data

SELECT * FROM city_data WHERE city = 'Virginia Beach' AND country = 'United States';

To visualize global_data

/* Select Global Temperature */
SELECT * FROM global_data;

/* changing the names of columns in order to have distinct columns */

ALTER TABLE city_data RENAME COLUMN avg_temp to localavg_temp;
ALTER TABLE global_data RENAME COLUMN avg_temp to globalavg_temp;

/* Join tables */
SELECT global_data.year, city_data.city, global_data.globalavg_temp, city_data.localavg_temp from global_data, city_data
WHERE (global_data.year = city_data.year) AND (city_data.city = ‘Virginia Beach’ AND city_data.country = ‘United States’);
