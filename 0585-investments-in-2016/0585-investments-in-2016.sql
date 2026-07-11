SELECT ROUND(SUM(tiv_2016),2) AS tiv_2016
FROM Insurance
WHERE pid IN (

    SELECT DISTINCT(T3.pid1) 
    FROM ( 
        SELECT T1.pid AS pid1, T2.pid AS pid2 
        FROM Insurance AS T1 
        LEFT JOIN Insurance AS T2 
        ON T1.tiv_2015 = T2.tiv_2015 AND T1.pid <> T2.pid ) AS T3 
    WHERE T3.pid2 IS NOT NULL

    INTERSECT

    SELECT T4.pid
    FROM Insurance AS T4
    LEFT JOIN Insurance AS T5
        ON T4.lat = T5.lat
    AND T4.lon = T5.lon
    AND T4.pid <> T5.pid
    WHERE T5.pid IS NULL

)