SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER MULTI
   ON  Cash
   AFTER INSERT

AS 
BEGIN
	SET NOCOUNT ON;
	Declare @sum int
Select @sum= sum  from inserted
	
update Goods 
	set count_store=count_store - 1
UPDATE Clients
SET discount_percent =3
from Cash
WHERE (buy_num is null) and sum >10000


END
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER MULTI1
   ON  Cash
   AFTER INSERT

AS 
BEGIN
	SET NOCOUNT ON;
	
	
UPDATE Clients
SET buy_num=buy_num+1



END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER MULTI2
   ON  Cash
   AFTER INSERT

AS 
BEGIN
	SET NOCOUNT ON;
	Declare @sum int
Select @sum= sum  from inserted
	

UPDATE Clients
SET discount_percent = discount_percent+1
from Cash
WHERE (buy_num is not null) and sum >10000


END
GO




--ограничения и соответсвующие требования к заданию созданы в базе данных DIP4 к базе данных имеют доступ пользрователи VasyaDIP4 PetrovDIP4 sellerDIP4 с соответсующими правами пароль: 1 