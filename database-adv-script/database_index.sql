-- ==============================
-- Implement Indexes for Optimization
-- ==============================

-- Write SQL CREATE INDEX commands to create appropriate indexes for those columns and save them on database_index.sql

-- Index on users email
CREATE INDEX idx_users_email ON users(email);

-- index on properties host and location
CREATE INDEX idx_properties_host_id ON properties(host_id);
CREATE INDEX idx_properties_location_id ON properties(location_id);

-- index on bookings with property_id and user_id
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- index on payments with booking_id
CREATE INDEX idx_payments_booking_id ON payments(booking_id);

-- index on reviews with property_id and user_id
CREATE INDEX idx_reviews_property_id ON reviews(property_id);
CREATE INDEX idx_reviews_user_id ON reviews(user_id);

-- index on messages with sender_id and recipient_id
CREATE INDEX idx_messages_sender_id ON messages(sender_id);
CREATE INDEX idx_messages_recipient_id ON messages(recipient_id);

-- Measure the query performance before and after adding indexes using EXPLAIN or ANALYZE.
EXPLAIN ANALYZE
SELECT * FROM users;