CREATE TABLE Departments
(
	DepartmentID INT PRIMARY KEY,
	DepartmentName VARCHAR(100)
);

CREATE TABLE Positions
(
	PositionID INT PRIMARY KEY,
	PositionTitle VARCHAR(50)
);

CREATE TABLE Employees
(
	EmployeeID INT PRIMARY KEY,
	FirstName VARCHAR(100),
	LastName VARCHAR(100),
	Gendet VARCHAR(50),
	Age INT,
	DepartmentID INT,
	PositionID INT,
	HireDate DATE,
	Salary DECIMAL(10, 2),
	FOREIGN KEY (DepartmentID) REFERENCES Departments (DepartmentID),
	FOREIGN KEY (PositionID) REFERENCES Positions (PositionID)
 );

 CREATE TABLE Performance
 (
	PerformanceID INT PRIMARY KEY,
	EmployeeID INT,
	ReviewYear INT,
	PerformanceScore DECIMAL(3, 2),
	FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID)
 );

 CREATE TABLE Attendance
 (
	AttendanceID INT PRIMARY KEY,
	EmployeeID INT,
	DaysPresent INT,
	DaysAbsent INT,
	FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID)
 );

 CREATE TABLE Attrition
 (
	AttritionID INT PRIMARY KEY,
	EmployeeID INT,
	AttritionStatus VARCHAR(20),
	ExitDate DATE,
	Reason VARCHAR(100),
	FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID)
 );

 ALTER TABLE Employees
 RENAME COLUMN Gendet TO Gender;
