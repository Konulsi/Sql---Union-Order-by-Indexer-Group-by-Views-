--select * from Employees

--select * from Customers


--butun datalari eyni olan employeeni her iki tablede varsa onu tekrar gostermir.
select * from Employees
union
select * from Customers

--butun employeeleri gosterir
select * from Employees
union all
select * from Customers


--birincide olub ikincide olmayanlari gosterir ancaq
select * from Employees
except
select * from Customers


--ortaq olanlari gosterir
select * from Employees
intersect
select * from Customers


--datalari azdan choxa siralanmasi Idye gore
select * from Students order by Id asc


--datalari  choxdan aza siralanmasi Age e gore
select [Name], [Surname], [Email], [Age] from Students 
where Age > 20
order by Age desc


--indiki vaxti gosterir
select GETDATE() as 'Current date'



 --group by eyni olan datalardan neche denedirse qruplawdirir

 select Count(*) 'Age count', Age from Students
 where Age > 17
 group by Age

 --qruplasdirdiqlarimizin arasindan werte gore gostermek.
 --meselen   qruplarin arasindan sayi 1den boyuk olanlari goster 
 having Count(*) >0
 order by Age desc


 select Count(*) 'Age count', Age from Students
 where Age > 17
 group by Age
 having Count(*) >0
 order by Count (*) desc

  select * from Students


  select Sum(Age) from Students
  select Avg(Age) from Students
  
  --declare variable teyin etmek

  --begin
  -- declare @age int = (select Sum(Age) from Students)
  -- declare @avgAge int = (select Avg(Age) from Students)

  -- if @age > @avgAge
	 -- print 'Yes'
  -- else 
	 -- print 'No'
  --end


   begin
   declare @avgAge int = (select Avg(Age) from Students)

   if @avgAge > 15
	 select [Name], [Surname] from Students
   else 
	  print 'No'
  end


  declare @counter int
  set @counter = 1
  while (@counter <= 10)
  begin
     print 'Somebody stops me!'
     set @counter = @counter +1
  
  end

  --view virtual tabledir
  --view yaradib her defe tableye muraciet etmirsen, viewdan ist edirsen
  create view GetStudentsByAge As
  select * from Students where Age > 25









