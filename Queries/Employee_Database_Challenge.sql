
SELECT n."emp_no", n."first_name", n."last_name", b."title", b."from_date", b."to_date"
INTO public.Retiring_employees
FROM public."Employees" AS n
INNER JOIN public."Titles" AS b ON  n."emp_no" = b."emp_no"
WHERE "birth_date" BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY n."emp_no";

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON("emp_no") "emp_no",
("first_name")"first_name",
("last_name")"last_name",
("title")"title"

INTO unique_titles
FROM retiring_employees
ORDER BY "emp_no", "to_date" DESC;

SELECT COUNT ("title"),"title"
INTO "Retiring_titles"
FROM unique_titles
GROUP BY "title"
ORDER BY "count" DESC


SELECT DISTINCT ON (e.emp_no) e.emp_no,
                    last_name,
                    first_name,
                    birth_date,
					de.from_date,
					de.to_date,
					title
INTO "Mentorship_eligibility"					
FROM "employees" AS e
    INNER JOIN "dept_emp" AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN titles AS l
        ON (l.emp_no = de.emp_no)
WHERE birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY e.emp_no;


--Genders
SELECT COUNT ("gender"),"gender"
INTO "Genders"
FROM "Employees"
GROUP BY "gender"

