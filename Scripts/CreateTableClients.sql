CREATE TABLE Teplosnab.dbo.Clients (
  ClientId INT IDENTITY NOT FOR REPLICATION /* Код клиента */
 ,ClientName VARCHAR(100) NOT NULL          /* Наименование клиента */ 
 ,ClientAdress VARCHAR(100) NULL            /* Адрес клиента */
 ,ClientUNP VARCHAR(10) NOT NULL            /* УНП */ 
 ,TypeId INT NOT NULL                       /* Тип - бюджет, хозрасчет, ЖСК и т.д. */
 ,datadog DATETIME NULL                     
 ,ndog FLOAT NULL
 ,_min VARCHAR(40) NULL
 ,tipbud INT NULL
 ,kodbank INT NULL
 ,data_per DATETIME NULL
) ON [PRIMARY]
GO

CREATE UNIQUE INDEX [org UNIQUE _kodorg_]
ON Teplosnab.dbo.org (kodorg)
ON [PRIMARY]
GO