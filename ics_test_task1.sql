select 
	e1.code as КодСотрудника1
	, v1.DateBegin as НачалоОтпуска
	, v1.DateEnd as КонецОтпуска
	, e2.code as КодСотрудника2, v2.DateBegin as НачалоОтпуска
	, v2.DateEnd as КонецОтпуска
from Vacation as v1 
	inner join Vacation as v2 on v1.DateBegin <= v2.DateEnd 
  		and v1.DateEnd >= v2.DateBegin
  		and v1.ID_Employee < v2.ID_Employee
  	inner join Employee as e1 on e1.ID = v1.ID_Employee
  	inner join Employee as e2 on e2.ID = v2.ID_Employee