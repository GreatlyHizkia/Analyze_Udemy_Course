SELECT * FROM udemy_courses

-- Data Cleaning

-- Check duplicate value in column 'course_id'
SELECT
    course_id,
    COUNT(*) AS NumberOf_duplicate
FROM
    udemy_courses
GROUP BY
    course_id
HAVING
    COUNT(course_id) > 1;


SELECT * FROM udemy_courses
    WHERE course_id = 837322
    OR course_id = 185526
    OR course_id = 1157298
    OR course_id = 1035638
    OR course_id = 28295
    OR course_id = 1084454
ORDER BY course_id


-- Delete the duplicate value
WITH CTE_DeleteDuplicate AS (
    SELECT
        *,
        ROW_NUMBER() OVER (
            PARTITION BY course_id
            ORDER BY course_id
        ) AS RowNum
    FROM
        udemy_courses
)
DELETE FROM CTE_DeleteDuplicate
WHERE RowNum > 1;

-- Drop column 'url'
ALTER TABLE udemy_courses
DROP COLUMN url;



-- Exploratory Data Analysis
SELECT * FROM udemy_courses

-- 1. What is the most popular subject (with the most subscribers)?
SELECT subject,
    sum(num_subscribers) as total_subscribers
    FROM udemy_courses
    GROUP BY subject
    ORDER BY 2 DESC

-- 2. Which course level (All Levels, Beginner, etc.) attracts the most subscribers?
SELECT level,
    sum(num_subscribers) as total_subscribers
    FROM udemy_courses
    GROUP BY level
    ORDER BY 2 DESC

-- 3. Top courses based on the ratio of reviews per subscriber (an indication of good engagement)?
SELECT Top 10
    course_title,
    num_subscribers,
    num_reviews,
    CAST(num_reviews AS FLOAT) / num_subscribers AS Review_Rate
FROM
    udemy_courses
WHERE
    num_subscribers >= 100 
ORDER BY
    Review_Rate DESC;

-- 4. What is the average price of a course (Paid) for each subject?
SELECT subject,
    COUNT(*) as total_paid_courses,
    avg(price) avg_price
    FROM udemy_courses
    WHERE is_paid = 1
    GROUP BY subject
    ORDER BY 3 DESC

-- 5. What is the price distribution (min, max, avg) at each difficulty level?
SELECT level,
    MIN(price) as Min_price,
    MAX(price) as Max_price,
    AVG(price) as avg_price
FROM udemy_courses
GROUP BY level

-- 6. What is the average number of subscribers and reviews for free vs. paid courses?
SELECT
    CASE
        WHEN is_paid = 1 THEN 'Paid Course'
        WHEN is_paid = 0 THEN 'Free Course'
        ELSE 'Unknown'
    END AS Course_Type,
    COUNT(course_id) AS Total_Courses,
    AVG(num_subscribers) AS Average_Subscribers,
    CAST(SUM(num_reviews) AS FLOAT) / SUM(num_subscribers) AS Review_Rate,
    AVG(num_reviews) AS Average_Reviews
FROM
    udemy_courses
GROUP BY
    is_paid
ORDER BY
    Review_Rate DESC;

-- 7. Average Subscribers Based on Content Duration (In 5-Hour Groups)
SELECT
    FLOOR(content_duration / 5) * 5 AS Duration_Group_Min_Hours,
    COUNT(course_id) AS Total_Courses,
    AVG(num_subscribers) AS Average_Subscribers_in_Group
FROM
    udemy_courses
GROUP BY
    FLOOR(content_duration / 5) * 5
ORDER BY
    Duration_Group_Min_Hours;


-- 8. Year-on-Year Growth Trend in Number of Courses (All Subjects)
SELECT
    YEAR(CAST(published_timestamp AS DATE)) AS Published_Year,
    COUNT(course_id) AS Total_Courses_Published,
    SUM(num_subscribers) AS Total_New_Subscribers
FROM 
    udemy_courses
GROUP BY 
    YEAR(CAST(published_timestamp AS DATE))
ORDER BY
    Published_Year;

