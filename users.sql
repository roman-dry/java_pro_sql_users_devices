create table users(id int primary key,
                   phone varchar unique, name varchar, lastname varchar, gender varchar);

insert into users values (1, '+180501234567', 'John', 'Ridick', 'male'),
                         (2, '+380681234567', 'Roman', 'Dry', 'male'),
                         (3, '+380931234567', 'Ilona', 'Palyanytsya', 'female');

create table devices(id int primary key, name varchar, mac_address varchar unique,
                     user_id int, foreign key (user_id) references users(id));

insert into devices values (1, 'HP', 'OO:2B:A3:4E:10:2C', 1),
                           (2, 'Aser', 'AO:BB:C4:2A:15:3C', 1),
                           (3, 'Lenovo', 'BA:26:4F:E5:C6:36', 2),
                           (4, 'Asus', '12:5F:E4:72:CC:E7', 3);

select * from users;

select * from users order by lastname;

select * from users where name = 'Roman';

select * from users where id between 0 and 100;

select * from users where phone like '+380%';

select max(id) from users;

select * from users inner join devices on users.id = devices.user_id;

select * from users inner join devices on users.id = devices.user_id group by users.id, devices.id order by count(devices.mac_address) DESC;



