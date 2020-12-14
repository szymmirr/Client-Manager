-- Destination picked by the most customers in given year
SELECT destination.country, destination.city FROM booking INNER JOIN trip ON booking.trip_id = trip.id INNER JOIN destination ON trip.destination_id = destination.id WHERE date_part('year', trip.departure_date) = 2020 GROUP BY destination.country, destination.city ORDER BY COUNT(*) DESC LIMIT 1;

-- Clients who did not order a trip
SELECT client.first_name, client.last_name FROM booking RIGHT OUTER JOIN client ON booking.client_id = client.id LEFT JOIN trip ON booking.trip_id = trip.id WHERE booking.client_id IS NULL

-- Total sum and average price for which given trip was sold for
SELECT trip_id, sum(negotiated_price), avg(negotiated_price) FROM booking GROUP BY trip_id;

-- Guide who has generated the most revenue in given year
SELECT guide.first_name, guide.last_name, sum(negotiated_price) FROM booking INNER JOIN trip ON booking.trip_id = trip.id INNER JOIN guide ON trip.guide_id = guide.id WHERE date_part('year', trip.departure_date) = 2020 GROUP BY guide.first_name, guide.last_name ORDER BY sum(negotiated_price) DESC LIMIT 1;

-- Client who's got the biggest discount
SELECT client.first_name, client.last_name, (trip.suggested_price-negotiated_price) AS roznica FROM booking INNER JOIN trip ON booking.trip_id = trip.id INNER JOIN client ON client_id = client.id GROUP BY client.first_name, client.last_name, roznica ORDER BY roznica DESC LIMIT 1;
