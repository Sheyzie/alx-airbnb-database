-- ==============================
-- USERS
-- ==============================
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
    ('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw1', '+2348011111111', 'guest'),
    ('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw2', '+2348022222222', 'host'),
    ('33333333-3333-3333-3333-333333333333', 'Charlie', 'Brown', 'charlie@example.com', 'hashed_pw3', '+2348033333333', 'host'),
    ('44444444-4444-4444-4444-444444444444', 'Admin', 'User', 'admin@example.com', 'hashed_pw4', NULL, 'admin');

-- ==============================
-- LOCATIONS
-- ==============================
INSERT INTO locations (location_id, city, state, country)
VALUES
    ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', 'Lagos', 'Lagos', 'Nigeria'),
    ('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', 'Abuja', 'FCT', 'Nigeria'),
    ('aaaaaaa3-aaaa-aaaa-aaaa-aaaaaaaaaaa3', 'London', 'England', 'UK');

-- ==============================
-- PROPERTIES
-- ==============================
INSERT INTO properties (property_id, host_id, name, description, location_id, price_per_night)
VALUES
    ('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', '22222222-2222-2222-2222-222222222222', 'Cozy Apartment in Lagos', 'A modern 2-bedroom apartment near the beach.', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', 150.00),
    ('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', '22222222-2222-2222-2222-222222222222', 'Luxury Villa in Abuja', 'Spacious villa with private pool and garden.', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', 350.00),
    ('bbbbbbb3-bbbb-bbbb-bbbb-bbbbbbbbbbb3', '33333333-3333-3333-3333-333333333333', 'Studio Flat in London', 'Affordable studio in central London.', 'aaaaaaa3-aaaa-aaaa-aaaa-aaaaaaaaaaa3', 100.00);

-- ==============================
-- BOOKINGS
-- ==============================
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, status)
VALUES
    ('ccccccc1-cccc-cccc-cccc-ccccccccccc1', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', '11111111-1111-1111-1111-111111111111', '2025-09-01', '2025-09-05', 'confirmed'),
    ('ccccccc2-cccc-cccc-cccc-ccccccccccc2', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', '11111111-1111-1111-1111-111111111111', '2025-10-10', '2025-10-15', 'pending'),
    ('ccccccc3-cccc-cccc-cccc-ccccccccccc3', 'bbbbbbb3-bbbb-bbbb-bbbb-bbbbbbbbbbb3', '11111111-1111-1111-1111-111111111111', '2025-12-20', '2025-12-25', 'confirmed');

-- ==============================
-- PAYMENTS
-- ==============================
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
    ('ddddddd1-dddd-dddd-dddd-ddddddddddd1', 'ccccccc1-cccc-cccc-cccc-ccccccccccc1', 600.00, 'credit_card'),
    ('ddddddd2-dddd-dddd-dddd-ddddddddddd2', 'ccccccc3-cccc-cccc-cccc-ccccccccccc3', 500.00, 'paypal');

-- ==============================
-- REVIEWS
-- ==============================
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
    ('eeeeeee1-eeee-eeee-eeee-eeeeeeeeeee1', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', '11111111-1111-1111-1111-111111111111', 5, 'Fantastic apartment, very clean and close to the beach!'),
    ('eeeeeee2-eeee-eeee-eeee-eeeeeeeeeee2', 'bbbbbbb3-bbbb-bbbb-bbbb-bbbbbbbbbbb3', '11111111-1111-1111-1111-111111111111', 4, 'Nice location in London but a bit small.');

-- ==============================
-- MESSAGES
-- ==============================
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
    ('fffffff1-ffff-ffff-ffff-fffffffffff1', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi Bob, I’m interested in your Lagos apartment.'),
    ('fffffff2-ffff-ffff-ffff-fffffffffff2', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hi Alice, thanks for your interest! The apartment is available.'),
    ('fffffff3-ffff-ffff-ffff-fffffffffff3', '11111111-1111-1111-1111-111111111111', '33333333-3333-3333-3333-333333333333', 'Hello Charlie, I’d like to book your London flat.');
