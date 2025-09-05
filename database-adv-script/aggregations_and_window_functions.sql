-- ==============================
-- Apply Aggregations and Window Functions
-- ==============================

-- Write a query to find the total number of bookings made by each user, using the COUNT function and GROUP BY clause.
SELECT COUNT(booking.user_id), user.first_name, user.last_name
FROM user
INNER JOIN booking
ON user.user_id = booking.user_id
GROUP BY booking.user_id;

-- Use a window function (ROW_NUMBER, RANK) to rank properties based on the total number of bookings they have received.

SELECT properties.name, properties.description, properties.price_per_night, RANK() OVER (
    PARTITION BY properties.property_id
    ORDER BY COUNT(bookings.property_id)
)
FROM properties
INNER JOIN bookings
ON properties.property_id = bookings.property_id;
