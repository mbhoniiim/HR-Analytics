--- Average Salary Per Department

SELECT d.DepartmentName, ROUND(AVG(e.Salary), 2) AS AverageSalary
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName
ORDER BY AverageSalary DESC;

-- Top 10 Highest Paid Employees

SELECT 
	FirstName,
	LastName,
	Salary
FROM Employees
ORDER BY Salary DESC
LIMIT 10;

--- Employee Count Per Department

SELECT
	d.DepartmentName, COUNT(*) AS Employees
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName;

---Average Performance Score Per Department

SELECT
	d.DepartmentName, ROUND(AVG(p.PerformanceScore), 2) AS AveragePerformance
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
JOIN Performance p ON e.EmployeeID = p.EmployeeID
GROUP BY d.DepartmentName
ORDER BY AveragePerformance DESC;

--Attrition Rate

SELECT
	AttritionStatus, COUNT(*) AS TotalEmployees
FROM Attrition
GROUP BY AttritionStatus;

-- Departments With Highest Attrition

SELECT
	d.DepartmentName, COUNT(*) AS EmployeesLeft
FROM Attrition a
JOIN Employees e ON a.EmployeeID =e.EmployeeID
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE a.AttritionStatus <> 'Active'
GROUP BY d.DepartmentName
ORDER BY EmployeesLeft DESC;
