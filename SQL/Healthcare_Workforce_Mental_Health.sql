--
-- 1)How many healthcare workers are in the dataset?

SELECT
     COUNT(*) AS Total_Healthcare_Workers
FROM HealthcareMentalHealth;

-- 2) Which healthcare profession has the highest number of employees?

SELECT
    Employee_Type,
    COUNT(*) AS Total_Employees
FROM HealthcareMentalHealth
GROUP BY Employee_Type
ORDER BY Total_Employees DESC;


-- 3) Which department experiences the highest stress level?

SELECT 
     Department,
     AVG(Stress_Level) AS Average_Stress_Level
FROM HealthcareMentalHealth
GROUP BY Department
ORDER BY Average_Stress_Level DESC;

-- 4) Which workplace factor contributes most to employee stress?

SELECT 
     Workplace_Factor,
     AVG(Stress_Level) AS Average_Stress_Level
FROM HealthcareMentalHealth
GROUP BY Workplace_Factor
ORDER BY Average_Stress_Level DESC;

--5) Which employee type experiences the highest burnout frequency?

SELECT 
Employee_Type,
       COUNT(Burnout_Frequency) AS Burnout_Count
FROM HealthcareMentalHealth
GROUP BY Employee_Type
ORDER BY Burnout_Count DESC;


-- 6) What is the average job satisfaction level across departments?

SELECT 
Department,
       AVG(Job_Satisfaction) AS Average_Job_Satisfaction
FROM HealthcareMentalHealth
GROUP BY Department
ORDER BY Average_Job_Satisfaction DESC;


--7) Which departments record the highest mental health?

SELECT 
     Department,
     SUM(Mental_Health_Absences) AS Total_Mental_Health_Absences
FROM HealthcareMentalHealth
GROUP BY Department
ORDER BY Total_Mental_Health_Absences DESC;


-- 8) Does access to EAPs reduce stress levels?

SELECT
     Access_to_EAPs,
     AVG(Stress_Level) AS Average_Stress_Level
FROM HealthcareMentalHealth
GROUP BY Access_to_EAPs;


-- 9) Which employee groups have the highest turnover intention?

SELECT 
     Employee_Type,
     COUNT(*) AS Total_Turnover_Intention
FROM HealthcareMentalHealth
WHERE Turnover_Intention = 1
GROUP BY Employee_Type
ORDER BY Total_Turnover_Intention DESC;


-- 10) What is the relationship between burnout frequency and stress levels?

SELECT 
     Burnout_Frequency,
     AVG(Stress_Level) AS Average_Stress_Level
FROM HealthcareMentalHealth
GROUP BY Burnout_Frequency
ORDER BY Average_Stress_Level DESC;