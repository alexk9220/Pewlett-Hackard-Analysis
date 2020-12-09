
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