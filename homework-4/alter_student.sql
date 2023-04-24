-- 1. Создать таблицу student с полями student_id serial, first_name varchar, last_name varchar,
-- birthday date, phone varchar
create table student
(
	student_id serial,
	first_name varchar,
	last_name varchar,
	birthday date,
	phone varchar
);

select * from student

-- 2. Добавить в таблицу student колонку middle_name varchar

alter table student add column middle_name varchar;

select * from student

-- 3. Удалить колонку middle_name
alter table student drop column middle_name;

select * from student

-- 4. Переименовать колонку birthday в birth_date
alter table student rename birthday to birth_date;

select * from student

-- 5. Изменить тип данных колонки phone на varchar(32)
alter table student alter column phone set data type varchar(50);

select * from student

-- 6. Вставить три любых записи с автогенерацией идентификатора
insert into student (first_name, last_name, birth_date, phone) values ('molodzov', 'kirill', '1998-11-28', '89278996339');
insert into student (first_name, last_name, birth_date, phone) values ('derevashkin', 'valera', '1998-08-08', '8927-899-2345');
insert into student (first_name, last_name, birth_date, phone) values ('odinzov', 'robert', '1984-04-23', '8927-8231546');

select * from student
