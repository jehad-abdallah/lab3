create database university_student;
show databases;
use university_student;
show tables;

drop table if exists `group`;
create table if not exists `group`(
id_group int(11) NOT NULL AUTO_INCREMENT,
id_elder int(11) NOT NULL,
group_name varchar(255) not null,
name_of_specialty varchar(255) not null,
PRIMARY KEY (id_group)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
insert into `group`(id_group, id_elder, group_name, name_of_specialty)
values
(1, 50, 'ПС-21', 'programming'),
(2, 51, 'ПС-21', 'programming'),
(3, 52, 'ПС-21', 'programming'),
(4, 53, 'ПС-21', 'programming'),
(5, 54, 'ПС-21', 'programming'),
(6, 55, 'ПС-21', 'programming'),
(7, 56, 'ПС-21', 'programming'),
(8, 57, 'ПС-21', 'programming'),
(9, 58, 'ПС-21', 'programming'),
(10, 59, 'ПС-21', 'programming'),
(11, 60, 'ПС-21', 'programming'),
(12, 61, 'ПС-21', 'programming'),
(13, 62, 'ПС-21', 'programming'),
(14, 63, 'ПС-21', 'programming'),
(15, 64, 'ПС-21', 'programming'),
(16, 65, 'ПС-21', 'programming'),
(17, 66, 'ПС-21', 'programming'),
(18, 67, 'ПС-21', 'programming'),
(19, 68, 'ПС-21', 'programming'),
(20, 69, 'ПС-21', 'programming'),
(21, 70, 'ПС-21', 'programming'),
(22, 71, 'ПС-21', 'programming'),
(23, 72, 'ПС-21', 'programming'),
(24, 73, 'ПС-21', 'programming'),
(25, 74, 'ПС-21', 'programming'),
(26, 75, 'ПС-21', 'programming'),
(27, 76, 'ПС-22', 'programming'),
(28, 77, 'ПС-22', 'programming'),
(29, 78, 'ПС-22', 'programming'),
(30, 79, 'ПС-22', 'programming'),
(31, 80, 'ПС-22', 'programming'),
(32, 81, 'ПС-22', 'programming'),
(33, 82, 'ПС-22', 'programming'),
(34, 83, 'ПС-22', 'programming'),
(35, 84, 'ПС-22', 'programming'),
(36, 85, 'ПС-22', 'programming'),
(37, 86, 'ПС-22', 'programming'),
(38, 87, 'ПС-22', 'programming'),
(39, 88, 'ПС-22', 'programming'),
(40, 89, 'ПС-22', 'programming'),
(41, 90, 'ПС-22', 'programming'),
(42, 91, 'ПС-22', 'programming'),
(43, 92, 'ПС-22', 'programming');


drop table if exists student;
create table if not exists student(
id_student int(11) not null auto_increment,
last_name varchar(255) not null,
id_group int(11) not null,
year_of_birth year NULL DEFAULT NULL,
PRIMARY KEY (id_student)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

insert into student
values
(100, 'Востоков', 1, 1994),
(101, 'Гайдуков', 2, 1995),
(102, 'Гребнева', 3, 1996),
(103, 'Захарова', 4, 1997),
(104, 'Иванов', 5, 1998),
(105, 'Исламов', 6, 1994),
(106, 'Ларионов', 7, 1995),
(107, 'Леханов', 8, 1996),
(108, 'Лучинина', 9, 1998),
(109, 'Матюков', 10, 1998),
(110, 'Микушов', 11, 1998),
(111, 'Морозов', 12, 1995),
(112, 'Мулахметов', 13, 1996),
(113, 'Протасов', 14, 1996),
(114, 'Пушкарев', 15, 1997),
(115, 'Савельев', 16, 1994),
(116, 'Салтуганов', 17, 1995),
(117, 'Смирнов', 18, 1996),
(118, 'Соловьев', 19, 1998),
(119, 'Степанова', 20, 1998),
(120, 'Трапезникова', 21, 1995),
(121, 'Фадеев', 22, 1996),
(122, 'Федякова', 23, 1994),
(123, 'Шаравуев', 24, 1993),
(124, 'Шмаков', 25, 1997),
(125, 'Якушев', 26, 1998),
(126, 'Ашыров', 27, 1995),
(127, 'Васенин', 28, 1996),
(128, 'Гаврилин', 29, 1994),
(129, 'Джехад', 30, 1995),
(130, 'Егошин', 31, 1994),
(131, 'Иванов', 32, 1998),
(132, 'Кателинский', 33, 1998),
(133, 'Лежнина', 34, 1995),
(134, 'Линдберг', 35, 1996),
(135, 'Москвичев', 36, 1997),
(136, 'Пенкин', 37, 1998),
(137, 'Поздеев', 38, 1995),
(138, 'Пузаткин', 39, 1996),
(139, 'Рыбаков', 40, 1994),
(140, 'Сосновская', 41, 1997),
(141, 'Степанова', 42, 1997),
(142, 'Шода', 43, 1998);


drop table if exists `subject`;
create table if not exists `subject`(
id_subject int(11) not null auto_increment,
name_of_subject varchar(255) not null,
hours_of_study float not null,
PRIMARY KEY (id_subject)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

insert into `subject`
values
(150, 'database', 32),
(151, 'oop', 42),
(152, 'php', 31),
(153, 'math', 35),
(154, 'pythics', 15),
(155, 'sport', 51),
(156, 'english', 30),
(157, 'game_design', 20);


drop table if exists `teacher`;
create table if not exists teacher(
id_teacher int(11) not null auto_increment,
surname varchar(255) not null,
position varchar(255) default null,
PRIMARY KEY (id_teacher)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

insert into `teacher`(id_teacher, surname)
values
(160, 'Лучинин'),
(161, 'Малов'),
(162, 'Ильин'),
(163, 'Галочкин'),
(164, 'Масленников'),
(165, 'Бодягина'),
(166, 'Егошина'),
(167, 'Алехаи');

drop table if exists lesson;
create table if not exists lesson(
id_lesson int(11) not null auto_increment,
id_teacher int(11) not null,
id_subject int(11) not null,
id_group int(11) not null,
`data` date default null,
PRIMARY KEY (id_lesson)
)
engine = InnoDB
default CHARACTER SET = utf8;
 
insert into lesson
values
(200, 160, 150, 1),
(201, 161, 151, 2),
(202, 162, 152, 3),
(203, 163, 153, 4),
(204, 164, 154, 5),
(205, 165, 155, 6),
(206, 166, 156, 7),
(207, 167, 157, 8),
(208, 168, 158, 9),
(209, 169, 159, 10),
(210, 170, 250, 11),
(211, 171, 251, 12),
(212, 172, 252, 13),
(213, 173, 253, 14),
(214, 174, 254, 15),
(215, 175, 255, 16),
(216, 176, 256, 17),
(217, 177, 257, 18),
(218, 178, 258, 19),
(219, 179, 259, 20),
(220, 180, 260, 21),
(221, 181, 261, 22),
(222, 182, 262, 23),
(223, 183, 263, 24),
(224, 184, 264, 25),
(225, 185, 265, 26),
(226, 186, 266, 27),
(227, 187, 267, 28),
(228, 188, 268, 29),
(229, 189, 269, 30),
(230, 190, 270, 31),
(231, 191, 271, 32),
(232, 192, 272, 33),
(233, 193, 273, 34),
(234, 194, 274, 35),
(235, 195, 275, 36),
(236, 196, 276, 37),
(237, 197, 277, 38),
(238, 198, 278, 39),
(239, 199, 279, 40),
(240, 200, 280, 41),
(241, 201, 281, 42),
(242, 202, 282, 43);


drop table if exists grade;
create table if not exists grade(
id_grade int(11) not null auto_increment,
id_student int(11) not null,
id_lesson int(11) not null,
grade float not null,
primary key(id_grade),
key(id_lesson),
key(id_student)
)
engine = InnoDB
default CHARACTER SET = utf8;


#1)Перенести описание БД в СУБД с проставлением индексов и внешних ключей.

ALTER TABLE student
ADD CONSTRAINT student.ib1 FOREIGN KEY (id_group) REFERENCES `group`(id_group);


ALTER TABLE lesson
ADD CONSTRAINT lesson.ib1 FOREIGN KEY (id_teacher) REFERENCES teacher(id_teacher),
ADD CONSTRAINT lesson.ib2 FOREIGN KEY (id_subject) REFERENCES `subject`(id_subject),
ADD CONSTRAINT lesson.ib3 FOREIGN KEY (id_group) REFERENCES `group`(id_group);
ALTER TABLE lesson
DROP FOREIGN KEY id_teacher;

create index IN_group_id on `group`(id_group);
create index IN_student_id on student(id_student);
create index IN_subject_id on `subject`(id_subject);
create index IN_teacher_id on teacher(id_teacher);
create index IN_lesson_id on lesson(id_lesson);
create index IN_grade_id on grade(id_grade);


#2)Выдать оценки студентов по математике если они обучаются/обучались данному предмету. Оформить выдачу данных с использованием view.
drop view grade_in_math;
create view grade_in_math as
	select `subject`.name_of_subject, lesson.id_lesson, lesson.`data`
    from lesson
    left join `subject` on lesson.id_subject = subject.id_subject
    where `subject`.name_of_subject = 'math';
select student.last_name, grade.grade 
from grade_in_math
left join grade on grade_in_math.id_lesson = grade.id_lesson
left join student on grade.id_student = student.id_student
where now() > grade_in_math.data;

-- 3)Дать информацию о должниках с указанием фамилии студента и названия предмета. 
-- Должниками считаются студенты, не имеющие оценки по предмету, который ведется в группе. Оформить в виде процедуры, на вход название группы.
drop procedure if exists debtor;
DELIMITER //

-- count grade

create procedure debtor (in group_name varchar(255))
begin
		create temporary table group_debtor(
        select student.id_student, student.last_name, `subject`.name_of_subject, lesson.id_lesson, count(grade.grade)
        from lesson
        left join `subject` on lesson.id_subject = `subject`.id_subject
        left join `group` on lesson.id_group = `group`.id_group
        left join student on `group`.id_group = student.id_group
        where `group`.group_name = group_name
        );
END //

DELIMITER ;

CALL debtor("ПС_22");


#4)Дать среднюю оценку студентов по каждому предмету для тех предметов, по которым занимается не менее 10 студентов.
#select srudent.last_name, `subject`.name_of_subject, avg(grade.grade);


#5)Дать оценки студентов специальности ВМ по всем проводимым предметам с указанием группы, фамилии, предмета, даты. При отсутствии оценки заполнить значениями NULL поля оценки и даты.
select student.id_student, student.last_name, `group`.group_name,`group`.name_of_specialty,`subject`.name_of_subject, lesson.id_lesson, lesson.data
from lesson
left join `subject` on lesson.id_subject = `subject`.id_subject
left join `group` on lesson.id_group = `group`.id_group
left join student on `group`.id_group = student.id_group
right join grade on student.id_student = grade.id_student
where `group`.name_of_specialty = 'ВМ';



#6)Всем студентам специальности ИВТ, получившим оценки меньшие 5 по предмету БД до 12.05, повысить эти оценки на 1 балл.
SET SQL_SAFE_UPDATES = 0;
update grade 
left join student_grade on grade.id_lesson = student_grade.id_lesson
set grade.grade = grade.grade + 1
where student_grade.name_of_subject = 'database' 
and grade.grade < 5 and student_grade.data < '12.05.2018';
