-- ==============================
-- Write Complex Queries with Joins
-- ==============================

-- Write a query using an INNER JOIN to retrieve all bookings and the respective users who made those bookings.

SELECT user.first_name, user.last_name, booking.start_date, booking.end_date, booking.status
FROM user
INNER JOIN booking
ON user.user_id = booking.user_id;


-- Write a query using a LEFT JOIN to retrieve all properties and their reviews, including properties that have no reviews.

SELECT properties.name, properties.description, properties.price_per_night, reviews.ratings, reviews.comments
FROM properties
LEFT JOIN reviews
ON properties.property_id = reviews.property_id;

-- Write a query using a FULL OUTER JOIN to retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user.

SELECT user.first_name, user.last_name, booking.start_date, booking.end_date, booking.status
FROM user
FULL OUTER JOIN booking
ON user.user_id = booking.user_id;