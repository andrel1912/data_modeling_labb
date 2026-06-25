
--YRKESCO TEST Queries 

-- Tester

-- 1 
SELECT 
    'Test: Personuppgifter separerade' AS test_name,
    COUNT(DISTINCT p.person_id) AS number_of_persons,
    COUNT(DISTINCT pd.person_id) AS number_of_person_details,
    CASE 
        WHEN COUNT(DISTINCT p.person_id) = COUNT(DISTINCT pd.person_id) THEN 'OK'
        ELSE 'FEL'
    END AS result
FROM person p
LEFT JOIN person_details pd ON p.person_id = pd.person_id; 

-- 2
SELECT 
    'Test: Personroller' AS test_name,
    SUM(CASE WHEN person_type = 'student' THEN 1 ELSE 0 END) AS students,
    SUM(CASE WHEN person_type = 'educator' THEN 1 ELSE 0 END) AS educators,
    SUM(CASE WHEN person_type = 'education_leader' THEN 1 ELSE 0 END) AS education_leaders,
    SUM(CASE WHEN person_type = 'consultant' THEN 1 ELSE 0 END) AS consultants,
    CASE 
        WHEN SUM(CASE WHEN person_type = 'student' THEN 1 ELSE 0 END) > 0
         AND SUM(CASE WHEN person_type = 'educator' THEN 1 ELSE 0 END) > 0
         AND SUM(CASE WHEN person_type = 'education_leader' THEN 1 ELSE 0 END) > 0
         AND SUM(CASE WHEN person_type = 'consultant' THEN 1 ELSE 0 END) > 0
        THEN 'OK'
        ELSE 'FEL'
    END AS result
FROM person;

-- 3
SELECT 
    'Test: Site/anläggningar' AS test_name,
    COUNT(*) AS number_of_sites,
    CASE 
        WHEN COUNT(*) >= 2 THEN 'OK'
        ELSE 'För få platser'
    END AS result
FROM site;