-- Set params
set session my.number_of_users = '500000';
set session my.number_of_coutries = '100';
set session my.number_of_cities = '30';

-- load the pgcrypto extension to gen_random_uuid ()
CREATE EXTENSION pgcrypto;

-- Insert to countries
INSERT INTO country
select id, concat('Country ', id) 
FROM GENERATE_SERIES(1, current_setting('my.number_of_coutries')::int) as id;

-- Insert to city
INSERT INTO city
select id
	, concat('City ', id)
	, floor(random() * (current_setting('my.number_of_coutries')::int) + 1)::int
FROM GENERATE_SERIES(1, current_setting('my.number_of_cities')::int) as id;

-- Insert to users
INSERT INTO users
select id
	, concat('User ', id)
FROM GENERATE_SERIES(1, current_setting('my.number_of_users')::int) as id;