# Database Normalization (Up to 3NF)

## Step 1: First Normal Form (1NF)
- All attributes are atomic (no repeating groups or multi-valued fields).
- Example: `phone_number` is a single value, not a list.
- Database meets 1NF.

## Step 2: Second Normal Form (2NF)
- All tables have single-column primary keys (UUIDs).
- No partial dependencies exist.
- Database meets 2NF.

## Step 3: Third Normal Form (3NF)
- Checked for transitive dependencies.

### Adjustments Made:
1. **Property Table**
   - `location` moved into a separate `Location` table to reduce redundancy.

2. **Booking Table**
   - Removed `total_price` since it can be derived from:
     ```
     (end_date - start_date) * property.price_per_night
     ```
   - This prevents inconsistency between stored and computed values.

3. Other tables (`User`, `Payment`, `Review`, `Message`) already satisfy 3NF.

---

## Final Notes
- The schema now satisfies **Third Normal Form (3NF)**.
- `total_price` may be reintroduced for performance reasons (denormalization), but must be carefully maintained.
- `Location` normalization is optional depending on query needs (e.g., if searching/filtering by city/state is frequent).
