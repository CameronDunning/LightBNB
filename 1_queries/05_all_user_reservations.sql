SELECT properties.id, title, cost_per_night, start_date, AVG(rating) as average_rating
FROM properties
  JOIN reservations ON properties.id=reservations.property_id
  JOIN property_reviews ON properties.id=property_reviews.property_id
GROUP BY properties.id, start_date, end_date, title, cost_per_night, reservations.guest_id
HAVING reservations.guest_id = 1
  AND end_date > now()
ORDER BY start_date;