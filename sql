DROP database IF EXISTS Sample_join;
CREATE DATABASE IF NOT EXISTS Sample_join;
USE Sample_join;
CREATE TABLE IF NOT EXISTS dept(
dept_id int AUTO_INCREMENT PRIMARY KEY,
dept_name varchar(50)
);

CREATE TABLE IF NOT EXISTS staff(
stf_id int auto_increment primary key,
stf_name varchar(50),
stf_add varchar(50),
stf_deptId int
);

INSERT INTO dept(dept_name) VALUES('IT'),('Sales'),('HR');

insert into staff(stf_name,stf_add,stf_deptId) 
VALUES('Ann','77,NRB',1),('Joy','11,KSM',7),
('Allan','22,NKR',2),('Alice','11,Kisii',1);

/*SELECT * FROM dept;
SELECT * FROM staff;*/

/*SELECT stf_id,stf_name,stf_add, stf_deptId, dept_name FROM dept
 LEFT JOIN 
 staff ON dept_id=stf_deptId
 ORDER BY stf_id DESC;
 
 SELECT stf_id,stf_name,stf_add, stf_deptId, dept_name FROM dept
 RIGHT JOIN 
 staff ON dept_id=stf_deptId
 ORDER BY stf_id DESC;
 */
 
 SELECT stf_id,stf_name,stf_add, stf_deptId, dept_name FROM dept
 LEFT JOIN 
 staff ON dept_id=stf_deptId
 UNION
 SELECT stf_id,stf_name,stf_add, stf_deptId, dept_name FROM dept
 RIGHT JOIN 
 staff ON dept_id=stf_deptId
 ORDER BY stf_id DESC;
