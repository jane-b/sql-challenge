-- Link to schema: https://app.quickdatabasediagrams.com/#/d/66dBkL

departments as d
-
dept_no varchar PK
dept_name text

dept_emp as de
-
emp_no varchar FK >- employees.emp_no
dept_no varchar FK >- departments.dept_no
from_date date
to_date date

dept_manager as dm
----
dept_no varchar FK >- departments.dept_no
emp_no varchar FK >- employees.emp_no
from_date date
to_date date

employees as e
------------
emp_no varchar PK
birth_date date
first_name text
last_name text
gender text
hire_date date

salaries as s
----
emp_no varchar FK >- employees.emp_no
salary decimal
from_date date
to_date date

titles as t
----
emp_no varchar FK >- employees.emp_no
title text
from_date date
to_date date

