DROP TABLE IF EXISTS "employee";
DROP TABLE IF EXISTS "title";
DROP TABLE IF EXISTS "dept_manager";
DROP TABLE IF EXISTS "department";
DROP TABLE IF EXISTS "dept_emp";
DROP TABLE IF EXISTS "emp_title";
DROP TABLE IF EXISTS "salary";

CREATE TABLE "title" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_title" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "employee" (
    "emp_id" INT   NOT NULL,
    "title_id" VARCHAR   NOT NULL,
    "birth_date" VARCHAR   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" CHAR   NOT NULL,
    "hire_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_employee" PRIMARY KEY (
        "emp_id"
     )
);

CREATE TABLE "salary" (
    "emp_id" INT   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_salary" PRIMARY KEY (
        "emp_id"
     )
);

CREATE TABLE "department" (
    "dept_id" VARCHAR(8)   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_department" PRIMARY KEY (
        "dept_id"
     )
);

CREATE TABLE "dept_emp" (
    "emp_id" INT   NOT NULL,
    "dept_id" VARCHAR   NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_id" VARCHAR   NOT NULL,
    "emp_id" INT   NOT NULL
);

ALTER TABLE "employee" ADD CONSTRAINT "fk_employee_title_id" FOREIGN KEY("title_id")
REFERENCES "title" ("title_id");

ALTER TABLE "salary" ADD CONSTRAINT "fk_salary_emp_id" FOREIGN KEY("emp_id")
REFERENCES "employee" ("emp_id");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_id" FOREIGN KEY("emp_id")
REFERENCES "employee" ("emp_id");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_id" FOREIGN KEY("dept_id")
REFERENCES "department" ("dept_id");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_id" FOREIGN KEY("dept_id")
REFERENCES "department" ("dept_id");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_id" FOREIGN KEY("emp_id")
REFERENCES "employee" ("emp_id");
