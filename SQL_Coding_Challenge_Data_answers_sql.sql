-- Properties Table
CREATE TABLE properties (
    property_id INT PRIMARY KEY,
    property_name VARCHAR(255),
    city VARCHAR(100),
    price VARCHAR(10),
    company_name VARCHAR(255)
);
-- Reviews Table
CREATE TABLE reviews (
    review_id INT PRIMARY KEY,
    property_id INT,
    review_text TEXT,
    score INT,
    FOREIGN KEY (property_id) REFERENCES properties(property_id)
);
-- Sample Data for Properties Table:
INSERT INTO properties (property_id, property_name, city, price, company_name)
VALUES
  (1, 'Cozy Apartment', 'CityA', "$100", 'Property Management A'),
  (2, 'Spacious Condo', 'CityB', "$150", 'Property Management B'),
  (3, 'Luxury Villa', 'CityC', "$300", 'Property Management C'),
  (4, 'Downtown Loft', 'CityA', "$120", 'Property Management A'),
  (5, 'Seaside Cottage', 'CityB', "$80", 'Property Management B');

-- Sample Data for Reviews Table with Words 'dirty,' 'cleaning,' or 'clean'
INSERT INTO reviews (review_id, property_id, review_text, score)
VALUES
  (101, 1, 'Perfect place for families. Spacious rooms and kid-friendly amenities.', 5),
  (102, 2, 'Family vacation was a delight. Beautiful view from the condo.', 4),
  (103, 3, 'Great for families. Kids loved the pool in the villa.', 5),
  (104, 4, 'Ideal for a family getaway. Downtown location added convenience.', 3),
  (105, 5, 'Family enjoyed the seaside cottage. Clean and comfortable.', 4),
  (106, 1, 'The apartment was dirty. Needs cleaning urgently!', 2),
  (107, 2, 'Clean and tidy. No issues at all.', 5),
  (108, 3, 'Just average.', 3),
  (109, 4, 'Nice place for stay. Kid friendly', 4),
  (110, 5, 'Perfect location.', 2);
  
SELECT * FROM properties;
SELECT * FROM reviews;
  
-- Create a new collumn to put the new data inside 
ALTER TABLE properties
ADD COLUMN clean_price FLOAT; 

UPDATE properties
SET clean_price = price;

UPDATE properties
SET clean_price = CAST(REPLACE(price, '$', '') AS FLOAT);


-- Top ten earnings 
SELECT
    property_id,
    property_name,
    city,
    clean_price AS total_earning
FROM
    properties
ORDER BY
    total_earning DESC
LIMIT 10;


-- properties for kids 
SELECT
    p.property_id,
    p.property_name
    
FROM
    properties p
JOIN
    reviews r ON p.property_id = r.property_id
WHERE
    r.review_text LIKE '%spacious rooms%'
    AND r.review_text LIKE '%kid-friendly%'
    AND r.review_text LIKE '%kid%'
    AND r.review_text LIKE '%familly%'
    
ORDER BY
    p.property_id;

-- property wihh the lowest score 
SELECT 
    p.property_id,
    p.property_name,
    AVG(r.score) AS average_score
FROM 
    properties p
JOIN 
    reviews r ON p.property_id = r.property_id
GROUP BY 
    p.property_id, p.property_name
ORDER BY 
    average_score ASC
LIMIT 1;





