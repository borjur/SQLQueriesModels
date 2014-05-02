CREATE TABLE Person
(
 Person_ID int identity,
 Person_Name varchar(55),
 Person_Item int 
)

Insert into Person values ('Johm',8);
Insert into Person values ('Tom',11);

CREATE TABLE Person_Demo
(
 Person_ID int identity,
 Person_Name varchar(55),
 Person_Item int, 
 Audit_Action varchar(100),
 Audit_Timestamp datetime
)

GO
CREATE TRIGGER trgInsteadOfInsert ON dbo.Person
INSTEAD OF Insert
AS
declare @person_ID int, @person_Name varchar(55), @person_Item int, @audit_action varchar(100);
select @person_ID=i.Person_ID from inserted i;
select @person_Name=i.Person_Name from inserted i;
select @person_Item=i.Person_Item from inserted i;
SET @audit_action='Inserted Record -- Instead Of Insert Trigger.';
BEGIN 
 BEGIN TRAN
 SET NOCOUNT ON
 if(@person_Item<=10)
 begin
 RAISERROR('Cannot Insert where rental item is < 10',16,1); ROLLBACK; end
 else begin Insert into Person (Person_Name,Person_Item) values 
 (@person_Name,@person_Item); Insert into 
 Person_Demo(Person_ID,Person_Name,Person_Item,Audit_Action,Audit_Timestamp)
 values(@@identity,@person_Name,@person_Item,@audit_action,getdate());
  COMMIT;
 PRINT 'Record Inserted -- Instead Of Insert Trigger.'
 END
 END



