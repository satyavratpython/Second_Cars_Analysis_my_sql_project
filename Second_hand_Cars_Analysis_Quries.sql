use my_sql_project;

-- 1 ) Read The Data --
select * from car_dekho;

-- 2 ) Tota Cars To Get a Count of Total Records --
select count(*) from Car_dekho;

-- 3 ) The Manager Asked The Employee How Many Cars Will be Available in 2023 --
select count(*) from car_dekho 
where year = 2023;

-- 4 ) The Manager Asked The Employee How Many Cars Will be Available in 2020/2021/2022 --
select count(*) from car_dekho
where year in (2020,2021,2022) group by year;

-- 5 ) Client Asked :-  How many Cars by year --
select year, count(*) from 
car_dekho group by year;

-- 6 ) Clienty Asked :-  How Many Deasel Cars avalable in 2020 --
select count(*) FROM car_dekho 
where year = 2020 and fuel = 'Diesel';

-- 7 ) Client requested to a car dealer :- Hoe Many petrol cars will be there in 2020 --
select Count(*) from car_dekho
where year = 2020 and fuel = 'Petrol';

-- 8 ) The Manager Asked Give the All fuel Cars (petrol, Diesel, CNG) come by All year -- 
select year, Count(*) from car_dekho
where fuel = 'Petrol' group by year;

-- 9 ) Manager Told Therew Are More Than 100 Cars in a year , in Which year had more Than 100 Cars ? --
select year , Count(*) from car_dekho
group by year having count(*) > 100;
 
-- 10 ) Manager Told :- To Retrive All Cars count details Between 2015 and 2023 we need complite list --
select count(*) from car_dekho 
where year between 2015 and 2023;

-- 11 ) Manager said To Employee Retrive All Cars Details between 2015 to 2023 we need Complete List --
select * from car_dekho 
where year between 2015 and 2023;

-- The End --