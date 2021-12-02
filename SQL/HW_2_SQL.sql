--������� ������� employees(- id. serial,  primary key,- employee_name. Varchar(50), not null

create table employees(
    id serial primary key,
    employees_name varchar (50) not null
);

select * from employees;

--��������� ������� employee 70 ��������.

insert into employees(employees_name)
values ('�������'),
    ('���������'),
    ('������'),
    ('��������'),
    ('�����'),
    ('���������'),
    ('�������'),
    ('�������'),
    ('�����'),
    ('��������'),
    ('�����'),
    ('��������'),
    ('�����'),
    ('���������'),
    ('������'),
    ('����'),
    ('����'),
    ('����������'),
    ('������'),
    ('���������'),
    ('����'),
    ('������'),
    ('���������'),
    ('������'),
    ('������'),
    ('������'),
    ('������'),
    ('�����'),
    ('������'),
    ('�����'),
    ('������'),
    ('�������'),
    ('������'),
    ('����'),
    ('����'),
    ('����'),
    ('�����'),
    ('�������'),
    ('������'),
    ('����'),
    ('����'),
    ('������'),
    ('�����'),
    ('�����'),
    ('������'),
    ('������'),
    ('�����'),
    ('������'),
    ('����'),
    ('���'),
    ('�����'),
    ('������'),
    ('�����'),
    ('�����'),
    ('�����'),
    ('�������'),
    ('������'),
    ('�����'),
    ('������'),
    ('��������'),
    ('�������'),
    ('�������'),
    ('�����'),
    ('����������'),
    ('�������'),
    ('���������'),
    ('����'),
    ('������'),
    ('������'),
    ('����');

select * from employees;

--������� ������� salary - id. Serial  primary key, - monthly_salary. Int, not null
create table salary(
    id serial primary key,
    monthly_salary int not null
);

select * from salary;

-- ��������� ������� salary 15 ��������:- 1000- 1100- 1200- 1300- 1400- 1500- 1600- 1700- 1800- 1900- 2000- 2100- 2200- 2300- 2400- 2500

insert into salary(monthly_salary)
values ('1000'),
       ('1100'),
       ('1200'),
       ('1300'),
       ('1400'),
       ('1500'),
       ('1600'),
       ('1700'),
       ('1800'),
       ('1900'),
       ('2000'),
       ('2100'),
       ('2200'),
       ('2300'),
       ('2400'),
       ('2500');

select * from salary;

--������� ������� employee_salary - id. Serial  primary key,- employee_id. Int, not null, unique - salary_id. Int, not null
create table employee_salary(
    id serial primary key,
    employee_id int unique not null,
    salary_id int not null
    );

select * from employee_salary;

--��������� ������� employee_salary 40 ��������: - � 10 ����� �� 40 �������� �������������� employee_id
insert into employee_salary(employee_id, salary_id)
values (1, 7),
       (2, 4),
       (3, 9),
       (4, 13),
       (5, 4),
       (6, 2),
       (7, 10),
       (8, 13),
       (9, 4),
       (10, 1),
       (11, 7),
       (12, 3),
       (13, 12),
       (14, 5),
       (15, 6),
       (16, 7),
       (17, 10),
       (18, 9),
       (19, 11),
       (20, 4),
       (21, 6),
       (22, 7),
       (23, 14),
       (24, 15),
       (25, 13),
       (26, 12),
       (27, 4),
       (28, 3),
       (29, 8),
       (30, 10),
       (71, 9),
       (72, 2),
       (73, 7),
       (74, 8),
       (75, 9),
       (76, 1),
       (77, 2),
       (78, 3),
       (79, 6),
       (80, 6);

      --������� ������� roles - id. Serial  primary key, - role_name. int, not null, unique
create table roles(
	id serial primary key,
	role_name int unique not null
);

select * from roles;

--�������� ��� ������ role_name � int �� varchar(30)
alter table roles
alter column role_name type varchar(30);

--��������� ������� roles 20 ��������:
insert into roles (role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
 	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
 	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');

select * from roles;

--������� ������� roles_employee - id. Serial  primary key, - employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
-- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)

create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
		foreign key (employee_id)
			references employees(id),
		foreign key (role_id)
			references roles(id)
);

select * from roles_employee;

-- ��������� ������� roles_employee 40 ��������:
insert into roles_employee(employee_id, role_id)
values (1, 2),
	   (2, 4),
	   (3, 9),
	   (4, 13),
	   (5, 4),
 	   (6, 2),
	   (7, 9),
	   (8, 13),
	   (9, 3),
	   (10, 4),
	   (11, 7),
	   (12, 20),
	   (13, 18),
 	   (14, 18),
	   (15, 17),
	   (16, 15),
	   (17, 16),
	   (18, 10),
	   (19, 19),
	   (20, 8),
	   (21, 7),
	   (22, 6),
	   (23, 5),
	   (24, 4),
	   (25, 3),
	   (26, 2),
	   (27, 1),
	   (28, 9),
	   (29, 11),
	   (30, 12),
	   (31, 13),
	   (32, 10),
	   (33, 14),
	   (34, 17),
	   (35, 18),
	   (36, 16),
	   (37, 19),
	   (38, 1),
	   (39, 2),
	   (40, 3);

select * from roles_employee;


