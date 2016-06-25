--
-- Скрипт сгенерирован Devart dbForge Studio for SQL Server, Версия 5.1.178.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/sql/studio
-- Дата скрипта: 25/06/16 15:26:31
-- Версия сервера: 10.50.4000
-- Версия клиента: 
--

SET DATEFORMAT ymd
SET ARITHABORT, ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET NUMERIC_ROUNDABORT, IMPLICIT_TRANSACTIONS, XACT_ABORT OFF
GO

SET IDENTITY_INSERT dbo.BudgetTypeRef ON
GO
INSERT dbo.BudgetTypeRef(BudgetTypeRefId, BudgetTypeRefName) VALUES (1, N'Местный бюджет')
INSERT dbo.BudgetTypeRef(BudgetTypeRefId, BudgetTypeRefName) VALUES (2, N'Областной бюджет')
INSERT dbo.BudgetTypeRef(BudgetTypeRefId, BudgetTypeRefName) VALUES (3, N'Республиканский бюджет')
INSERT dbo.BudgetTypeRef(BudgetTypeRefId, BudgetTypeRefName) VALUES (4, N'Прочие')
GO
SET IDENTITY_INSERT dbo.BudgetTypeRef OFF
GO

SET IDENTITY_INSERT dbo.ClientTypeRef ON
GO
INSERT dbo.ClientTypeRef(ClientTypeRefId, ClientTypeName) VALUES (1, N'Бюджет')
INSERT dbo.ClientTypeRef(ClientTypeRefId, ClientTypeName) VALUES (2, N'Хозрасчет')
INSERT dbo.ClientTypeRef(ClientTypeRefId, ClientTypeName) VALUES (3, N'ЖСК')
INSERT dbo.ClientTypeRef(ClientTypeRefId, ClientTypeName) VALUES (4, N'ЖСК (Академия)')
GO
SET IDENTITY_INSERT dbo.ClientTypeRef OFF
GO

SET IDENTITY_INSERT dbo.ContractTypeRef ON
GO
INSERT dbo.ContractTypeRef(ContractTypeRefId, ContractTypeName) VALUES (1, N'договор на отпуск тепловой энергии')
INSERT dbo.ContractTypeRef(ContractTypeRefId, ContractTypeName) VALUES (2, N'договор на водоснабжение и пропуск сточных вод')
INSERT dbo.ContractTypeRef(ContractTypeRefId, ContractTypeName) VALUES (3, N'договор на вывоз и утилизацию бытовых отходов')
GO
SET IDENTITY_INSERT dbo.ContractTypeRef OFF
GO

SET IDENTITY_INSERT dbo.MinistryRef ON
GO
INSERT dbo.MinistryRef(MinistryRefId, MinistryName) VALUES (1, NULL)
INSERT dbo.MinistryRef(MinistryRefId, MinistryName) VALUES (2, N'Министерство архитектуры')
INSERT dbo.MinistryRef(MinistryRefId, MinistryName) VALUES (3, N'Министерство бытового обслуживания')
INSERT dbo.MinistryRef(MinistryRefId, MinistryName) VALUES (4, N'Министерство жил.ком.хоз-ва')
INSERT dbo.MinistryRef(MinistryRefId, MinistryName) VALUES (5, N'Министерство здравохранения')
INSERT dbo.MinistryRef(MinistryRefId, MinistryName) VALUES (6, N'Министерство культуры')
INSERT dbo.MinistryRef(MinistryRefId, MinistryName) VALUES (7, N'Министерство обороны')
INSERT dbo.MinistryRef(MinistryRefId, MinistryName) VALUES (8, N'Министерство образования')
INSERT dbo.MinistryRef(MinistryRefId, MinistryName) VALUES (9, N'Министерство прочие')
INSERT dbo.MinistryRef(MinistryRefId, MinistryName) VALUES (10, N'Министерство с/хозяйства')
INSERT dbo.MinistryRef(MinistryRefId, MinistryName) VALUES (11, N'Министерство связи')
INSERT dbo.MinistryRef(MinistryRefId, MinistryName) VALUES (12, N'Министерство соцзащиты')
INSERT dbo.MinistryRef(MinistryRefId, MinistryName) VALUES (13, N'Министерство торговли')
GO
SET IDENTITY_INSERT dbo.MinistryRef OFF
GO