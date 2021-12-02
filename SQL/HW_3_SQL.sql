 --1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
 select employees.employees_name, salary.monthly_salary from employees 
     join employee_salary on employees.id = employee_salary.employee_id
     join salary on salary.id = employee_salary.salary_id;
 
 --2. ������� ���� ���������� � ������� �� ������ 2000.
 select employees.employees_name, salary.monthly_salary from employees 
     join employee_salary on employees.id = employee_salary.employee_id
     join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary < 2000;
 
 --3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
 select employees.employees_name, salary.monthly_salary from employee_salary  
     left join employees on employees.id = employee_salary.employee_id
     join salary on salary.id = employee_salary.salary_id
where employees_name is null;
 
 --4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employees.employees_name, salary.monthly_salary from employee_salary 
    left join employees on employees.id = employee_id
    join salary on salary.id = salary_id
where monthly_salary<2000 and employees_name is null;
 
 --5. ����� ���� ���������� ���� �� ��������� ��.
select employees.employees_name, monthly_salary from employees
    left join employee_salary on employees.id = employee_id
    full join salary on salary.id = salary_id
where monthly_salary is null;
 
 --6. ������� ���� ���������� � ���������� �� ���������.
select employees.employees_name, roles.role_name from employees
    join roles_employee on employees.id = roles_employee.employee_id
    join roles on roles.id = roles_employee.role_id; 
    
 --7. ������� ����� � ��������� ������ Java �������������.
select employees.employees_name, roles.role_name from employees
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_id
    where role_name like '%Java developer%';
 
 --8. ������� ����� � ��������� ������ Python �������������.
select employees.employees_name, roles.role_name from employees 
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_id
where role_name like '%Python developer%';
 
 --9. ������� ����� � ��������� ���� QA ���������.
select employees.employees_name, roles.role_name from employees 
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_id
where role_name like '%QA engineer%';
 
 --10. ������� ����� � ��������� ������ QA ���������.
select employees.employees_name, roles.role_name from employees
    join roles_employee on employees.id=employee_id
    join roles on roles.id = role_id
where role_name like '%Manual QA%';
 
 --11. ������� ����� � ��������� ��������������� QA
select employees.employees_name, roles.role_name from employees
    join roles_employee on employees.id=employee_id
    join roles on roles.id = role_id
where role_name like '%Automation QA%';
 
 --12. ������� ����� � �������� Junior ������������
select employees.employees_name, roles.role_name, salary.monthly_salary from employees
    join roles_employee on roles_employee.employee_id = employees.id
    join roles on roles.id = roles_employee.role_id
    join employee_salary on employee_salary.employee_id = employees.id
    join salary on salary.id = salary_id
where role_name like '%Junior%';
 
 --13. ������� ����� � �������� Middle ������������
select employees.employees_name, roles.role_name, salary.monthly_salary from employees
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_id
    join employee_salary on employees.id = employee_salary.employee_id 
    join salary on salary.id = salary_id
where role_name like '%Middle%';
 
 --14. ������� ����� � �������� Senior ������������
select employees.employees_name, roles.role_name, salary.monthly_salary from employees 
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_Id
    join employee_salary on employees.id = employee_salary.employee_id
    join salary on salary.id = salary_id
where role_name like '%Senior%';
 
 --15. ������� �������� Java �������������
select roles.role_name, salary.monthly_salary from employees 
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_id
    join employee_salary on employees.id = employee_salary.employee_id
    join salary on salary.id = salary_id
where role_name like '%Java developer%';
 
    
 --16. ������� �������� Python �������������
select roles.role_name, salary.monthly_salary from employees
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_id
    join employee_salary on employees.id = employee_salary.employee_id
    join salary on salary.id = salary_id
where role_name like '%Python%';
 
 --17. ������� ����� � �������� Junior Python �������������
select employees.employees_name, roles.role_name, salary.monthly_salary from employees
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_id
    join employee_salary on employees.id = employee_salary.employee_id 
    join salary on salary.id = salary_id
where role_name like 'Junior Python developer';
 
 --18. ������� ����� � �������� Middle JS �������������
select employees.employees_name, roles.role_name, salary.monthly_salary from employees 
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_Id
    join employee_salary on employees.id = employee_salary.employee_id
    join salary on salary.id = salary_id
where role_name like 'Middle JavaScript developer';
 
 --19. ������� ����� � �������� Senior Java �������������
select employees.employees_name, roles.role_name, salary.monthly_salary from employees 
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_Id
    join employee_salary on employees.id = employee_salary.employee_id
    join salary on salary.id = salary_id
where role_name like 'Senior Java developer';
 
 --20. ������� �������� Junior QA ���������
select employees.employees_name, roles.role_name, salary.monthly_salary from employees 
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_Id
    join employee_salary on employees.id = employee_salary.employee_id
    join salary on salary.id = salary_id
where role_name like '%Junior% %QA%';
 
 --21. ������� ������� �������� ���� Junior ������������
select avg (salary.monthly_salary) from employees 
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_id
    join employee_salary on employees.id = employee_salary.employee_id
    join salary on salary.id = salary_id
where role_name like '%Junior%';
 
 --22. ������� ����� ������� JS �������������
select sum (salary.monthly_salary) from employees
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_id
    join employee_salary on employees.id = employee_salary.employee_id
    join salary on salary.id = salary_id
where role_name like '%JavaScript developer%';
    
 --23. ������� ����������� �� QA ���������
select min (salary.monthly_salary) from employees     
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_id
    join employee_salary on employees.id = employee_salary.employee_id
    join salary on salary.id = salary_id
where role_name like '%QA% %engineer%';
 
 --24. ������� ������������ �� QA ���������
select max (salary.monthly_salary) from employees     
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_id
    join employee_salary on employees.id = employee_salary.employee_id
    join salary on salary.id = salary_id
where role_name like '%QA% %engineer%';
 
 --25. ������� ���������� QA ���������
select count (role_name) from employees 
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_id
    join employee_salary on employees.id = employee_salary.employee_id
    join salary on salary.id = salary_id
where role_name like '%QA% %engineer%';
 
 --26. ������� ���������� Middle ������������.
select count (role_name) from employees 
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_id
    join employee_salary on employees.id = employee_salary.employee_id
    join salary on salary.id = salary_id
where role_name like '%Middle%';
 
 --27. ������� ���������� �������������
select count (role_name) from employees 
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_id
    join employee_salary on employees.id = employee_salary.employee_id
    join salary on salary.id = salary_id
where role_name like '%developer%';
 
 --28. ������� ���� (�����) �������� �������������.
select sum (salary.monthly_salary) from employees 
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_id
    join employee_salary on employees.id = employee_salary.employee_id
    join salary on salary.id = salary_id
where role_name like '%developer%';
 
 --29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employees.employees_name, roles.role_name, salary.monthly_salary from employees 
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_id
    join employee_salary on employees.id = employee_salary.employee_id
    join salary on salary.id = salary_id
order by monthly_salary asc;
 
 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employees.employees_name, roles.role_name, salary.monthly_salary from employees 
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_id
    join employee_salary on employees.id = employee_salary.employee_id
    join salary on salary.id = salary_id
order by monthly_salary desc;
 
 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employees.employees_name, roles.role_name, salary.monthly_salary from employees 
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_id
    join employee_salary on employees.id = employee_salary.employee_id
    join salary on salary.id = salary_id
where monthly_salary < 2300;
 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employees.employees_name, roles.role_name, salary.monthly_salary from employees 
    join roles_employee on employees.id = employee_id
    join roles on roles.id = role_id
    join employee_salary on employees.id = employee_salary.employee_id
    join salary on salary.id = salary_id
where monthly_salary in (1100, 1500, 2000);