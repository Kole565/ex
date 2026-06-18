create database moodledb;
create user moodle identified by 'P@ssw0rd';
grant all privileges on moodledb.* to moodle;
flush privileges;
exit

