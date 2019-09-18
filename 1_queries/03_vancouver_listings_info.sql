-- SELECT properties.id, title, cost_per_night, AVG(rating)
-- FROM properties JOIN property_reviews ON properties.id=property_id
-- GROUP BY properties.id
-- HAVING city='Vancouver'
-- ORDER BY cost_per_night;

SELECT properties.id, title, cost_per_night, avg(property_reviews.rating) as average_rating
FROM properties
  JOIN property_reviews ON properties.id = property_id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;