-- 1.current date/curdate
select current_date();
select curdate();

-- 2. current time/curtime
select current_time();
select curtime();
-- 3. now/current date and time
select now();
select current_timestamp();
-- date() string into date yyyy-mm-dd
select date('2025-09-23');
-- time()
select time('2025-09-23 15:45:00');
-- year,month,day
select year(now());
select month('2025-09-23');
select day('2025-09-23');
-- hour,minute,second
select hour('2025-09-23 15:45:00');
select minute('2025-09-23 15:45:00');
select second('2025-09-23 15:45:30');
-- dayname,monthname
select dayname('2026-06-30');
select monthname('2026-06-30');
-- extract
select extract(year from '2026-06-30 15:45:30');
select extract(month from '2026-06-30 15:45:30');
select extract(day from '2026-06-30 15:45:30');
select extract(hour from '2026-06-30 15:45:30');
select extract(minute from '2026-06-30 15:45:30');
select extract(second from '2026-06-30 15:45:30');
-- dateadd/adddate
select date_add(now(),interval 10 day);
select adddate(now(),interval 2 month);
-- date sub/subdate
select subdate('2026-03-23', interval 7 day);
-- datediff
select datediff('2026-06-30','2005-06-30');
-- timediff
select timediff('10:30:00','09:15:00');
-- last day of month
select last_day('2025-03-12');
-- dayofweek dayofmonth dayofyear
select dayofweek('2026-03-30');
select dayofmonth('2026-03-30');
select dayofyear('2026-03-30');
-- week,quater
select week('2026-03-30');
select quarter('2026-03-12');
-- str-to-date
select str_to_date('2026-03-12' , '%Y-%m-%d');
-- utc-date,utc-time,utc-timestamp
select utc_date();
select utc_time();
select utc_timestamp();
-- from unixtime
select unix_timestamp('2026-03-30 12:25:00');
select from_unixtime(1774853700);

