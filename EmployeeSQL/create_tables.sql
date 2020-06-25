-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/66dBkL

    CREATE TABLE "departments" (
        "dept_no" varchar,
        "dept_name" text,
        CONSTRAINT "pk_departments" PRIMARY KEY (
            "dept_no"
        )
    );

    CREATE TABLE "dept_emp" (
        "emp_no" varchar,
        "dept_no" varchar,
        "from_date" date,
        "to_date" date
    );

    CREATE TABLE "dept_manager" (
        "dept_no" varchar,
        "emp_no" varchar,
        "from_date" date,
        "to_date" date
    );

    CREATE TABLE "employees" (
        "emp_no" varchar,
        "birth_date" date,
        "first_name" text,
        "last_name" text,
        "gender" text,
        "hire_date" date,
        CONSTRAINT "pk_employees" PRIMARY KEY (
            "emp_no"
        )
    );

    CREATE TABLE "salaries" (
        "emp_no" varchar,
        "salary" decimal,
        "from_date" date,
        "to_date" date
    );

    CREATE TABLE "titles" (
        "emp_no" varchar,
        "title" text,
        "from_date" date,
        "to_date" date
    );

    ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
    REFERENCES "employees" ("emp_no");

    ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
    REFERENCES "departments" ("dept_no");

    ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
    REFERENCES "departments" ("dept_no");

    ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
    REFERENCES "employees" ("emp_no");

    ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
    REFERENCES "employees" ("emp_no");

    ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_no" FOREIGN KEY("emp_no")
    REFERENCES "employees" ("emp_no");

