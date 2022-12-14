create schema netology;
-- создадим таблицу
create table persons
(
    name varchar(20) not null ,
    surname varchar(20) not null ,
    age int check ( 0 <= age <= 140 ),
    phone_number varchar(11),
    city_of_living varchar(255) not null,
    primary key(name, surname, age)
);
-- заполнение таблицы
insert into persons (name, surname, age, phone_number, city_of_living)
values ('Иван', 'Петров', 45, 79212348735, 'Москва');
insert into persons (name, surname, age, phone_number, city_of_living)
values ('Аня', 'Васильева', 33, 791147477455, 'Краснодар');
insert into persons (name, surname, age, phone_number, city_of_living)
values ('Федор', 'Иванов', 12, 79052394647, 'Иваново');
insert into persons (name, surname, age, phone_number, city_of_living)
values ('Ольга', 'Сидоренко', 28, 79032345678, 'Москва');
-- 3)  скрипт, который будет искать в таблице PERSONS поля name и surname пользователей, которые проживают в Москве
select name, surname from persons
where city_of_living = 'Москва'
order by name, surname;

-- 4) скрипт, который будет искать в таблице PERSONS все поля, у которых поле age выше 27 лет. Отсортируйет
-- получаемые результаты по убыванию возраста.

select * from persons
where age > 27
order by age desc;


/*
 Задание.
 Сегодня мы с вами напишем свои первые скрипты для СУБД. Скрипт для СУБД - это файл с расширением sql, который содержит
в себе sql код. Пока не будем писать что-либо специфичное для каких-либо СУБД.

 1/ Напишите скрипт создания таблицы со следующими параметрами:
 Название таблицы - PERSONS
содержит в себе 5 столбцов - name, surname, age, phone_number, city_of_living
первичным ключом будет сочетание name, surname, age
2/ Напишите скрипт, который будет искать в таблице PERSONS поля name и surname пользователей, которые проживают в MOSCOW.

3/ Напишите скрипт, который будет искать в таблице PERSONS все поля, у которых поле age выше 27 лет. Отсортируйет
  получаемые результаты по убыванию возраста.


 Итого у вас должно быть три файла-скрипта с расширением sql. Написанные скрипты выложите в отдельный репозиторий на гитхабе,
  и прикрепите ссылку на него в домашнем задании.*/