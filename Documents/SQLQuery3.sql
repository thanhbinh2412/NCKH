


 CREATE TABLE dbo.tbl_sample
( [ID] VARCHAR(8) ,
  [Name] varchar(50)
CONSTRAINT PK_Employee_EmployeeID
PRIMARY KEY CLUSTERED ([ID] ASC) )

CREATE SEQUENCE dbo.Sample_Seq AS
INT START WITH 1
INCREMENT BY 1 ;

ALTER TABLE dbo.tbl_sample
ADD CONSTRAINT Const_Sample_Seq
DEFAULT FORMAT((NEXT VALUE FOR dbo.Sample_Seq),'TV0#') FOR [ID];

INSERT INTO dbo.tbl_sample ([Name])
VALUES ('Imran'),('Bob'),('Sandra')

SELECT * FROM tbl_sample