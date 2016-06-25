/* Пользовательские типы данных */ 
CREATE TYPE
  dbo.TId FROM INT NOT NULL
GO  

CREATE TYPE
  dbo.TIdNull FROM INT NULL
GO      

CREATE TYPE
  dbo.TVarchar10 FROM VARCHAR(10)
GO

CREATE TYPE
  dbo.TAccount FROM VARCHAR(13)
GO

CREATE TYPE
  dbo.TVarchar30 FROM VARCHAR(30)
GO

CREATE TYPE
  dbo.TVarchar100 FROM VARCHAR(100)
GO

CREATE TYPE 
  dbo.TBoolean FROM BIT
GO      

/* Справочник типов клиентов */
CREATE TABLE Teplosnab.dbo.ClientTypeRef
(
	ClientTypeRefId TId IDENTITY PRIMARY KEY,
  ClientTypeName TVarchar30
)
GO

/* Справочник банков */
CREATE TABLE Teplosnab.dbo.Banks (
  BankId TId IDENTITY PRIMARY KEY,
  BankName TVarchar100 NOT NULL,
  BankMFO TVarchar10 NOT NULL,
  BankAdress TVarchar100 NULL
)
GO

/* Справочник видов договоров */
CREATE TABLE Teplosnab.dbo.ContractTypeRef
(
	ContractTypeRefId TId IDENTITY PRIMARY KEY,
	ContractTypeName TVarchar100
)
GO

/* Справочник министерств и ведомств */
CREATE TABLE Teplosnab.dbo.MinistryRef
(
  MinistryRefId INT IDENTITY NOT NULL PRIMARY KEY,
  MinistryName TVarchar100
)
GO

/* Справочник типов бюджета */
CREATE TABLE Teplosnab.dbo.BudgetTypeRef
(
  BudgetTypeRefId TId IDENTITY PRIMARY KEY,
  BudgetTypeRefName TVarchar100
)
GO

/* Справочник клиентов */
CREATE TABLE Teplosnab.dbo.Clients (
  ClientId TId IDENTITY PRIMARY KEY,          /* Код клиента */
  ClientName TVarchar100 NOT NULL,            /* Наименование клиента */ 
  ClientAdress TVarchar100,                   /* Адрес клиента */
  ClientUNP TVarchar10 NOT NULL,              /* УНП */ 
  ClientTypeRefId Tid                         /* Тип - бюджет, хозрасчет, ЖСК и т.д. */
    REFERENCES ClientTypeRef(ClientTypeRefId),  
  MinistryRefId TIdNull                       /* Код министерства */
    REFERENCES MinistryRef(MinistryRefId),
  BudgetTypeRefId TIdNull                     /* Тип бюджета */
    REFERENCES BudgetTypeRef(BudgetTypeRefId)
)
GO

/* Договора клиентов */
CREATE TABLE Teplosnab.dbo.Contracts
(
  ContractId TId IDENTITY PRIMARY KEY,
  ContractNum TVarchar10,
  ContractDate DATE,
  ContractTypeRefId TId REFERENCES ContractTypeRef(ContractTypeRefId),
  ClientId TId REFERENCES Clients(ClientId)	
)
GO

/* Справочник расчетных счетов */
CREATE TABLE Teplosnab.dbo.Accounts
(
	AccId TId IDENTITY PRIMARY KEY,
	AccNum TAccount,
  ClientId TId REFERENCES Clients(ClientId),
  BankId TIdNull REFERENCES Banks(BankId),
  IsMain TBoolean
)
GO