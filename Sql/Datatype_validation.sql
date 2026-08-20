Use LogisticsAnalytics;
EXEC sp_help Drivers;
select * from Drivers;
Alter table Drivers Alter column hire_date DATE null;
Alter table Drivers Alter column date_of_birth DATE null;
Alter table Drivers Alter column termination_date DATE null;
EXEC sp_help Facilities;
EXEC sp_help Facilities;
select * from Delivery_Event;
