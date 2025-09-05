-- ==============================
-- Practice Subqueries
-- ==============================

-- Write a query to find all properties where the average rating is greater than 4.0 using a subquery.
SELECT properties.name, properties.description, properties.price_per_night, reviews.ratings, reviews.comments
FROM properties
INNER JOIN reviews
ON properties.property_id = reviews.property_id
WHERE AVG(reviews.ratings) > 4
ORDER BY reviews.ratings;

-- Write a correlated subquery to find users who have made more than 3 bookings.
SELECT user.first_name, user.last_name, booking.start_date
FROM user
WHERE user.user_id IN (
    SELECT bookings.user_id
    FROM bookings
    WHERE COUNT(bookings.user_id) > 3
);