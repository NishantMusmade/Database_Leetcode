-- Write a solution to find the employees who earn more than their managers.

-- Return the result table in any order.

CREATE DATABASE  leetcode;

USE leetcode;

Create table If Not Exists Employee (id int, name varchar(255), salary int, managerId int);
insert into Employee (id, name, salary, managerId) values ('1', 'Joe', '70000', '3');
insert into Employee (id, name, salary, managerId) values ('2', 'Henry', '80000', '4');
insert into Employee (id, name, salary, managerId) values ('3', 'Sam', '60000', NULL);
insert into Employee (id, name, salary, managerId) values ('4', 'Max', '90000', NULL);

SELECT b.name as Employee FROM Employee as a JOIN Employee as b ON a.id = b.managerId WHERE a.salary < b.salary;

-- Another solution
 
SELECT e2.name as Employee
FROM employee e1
INNER JOIN employee e2 ON e1.id = e2.managerID WHERE e1.salary < e2.salary;

