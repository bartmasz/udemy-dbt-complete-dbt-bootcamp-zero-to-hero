-- Set up the defaults
SET search_path TO raw;

DROP TABLE IF EXISTS raw_listings;
CREATE TABLE raw_listings(
    id int4 NULL,
    listing_url varchar NULL,
    "name" varchar NULL,
    room_type varchar NULL,
    minimum_nights int4 NULL,
    host_id int4 NULL,
    price varchar NULL,
    created_at varchar NULL,
    updated_at varchar NULL
);

DROP TABLE IF EXISTS raw_hosts;
CREATE TABLE raw_hosts (
	id int4 NULL,
	"name" varchar NULL,
	is_superhost varchar NULL,
	created_at varchar NULL,
	updated_at varchar NULL
);

DROP TABLE IF EXISTS raw_reviews;
CREATE TABLE raw_reviews (
	listing_id int4 NULL,
	"date" varchar NULL,
	reviewer_name varchar NULL,
	"comments" varchar NULL,
	sentiment varchar NULL
);