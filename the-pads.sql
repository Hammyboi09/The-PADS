SELECT 
    CONCAT(Name, '(', LEFT(Occupation, 1), ')') AS Details
FROM 
    OCCUPATIONS
UNION ALL
SELECT 
    CONCAT('There are a total of ', COUNT(Occupation), ' ', LOWER(Occupation), 's.')
FROM 
    OCCUPATIONS
GROUP BY 
    Occupation
ORDER BY 
    CASE
        WHEN Details LIKE 'There%' THEN 2
        ELSE 1
    END,
    Details;
