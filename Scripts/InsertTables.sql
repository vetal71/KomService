/* Банки */
/*INSERT INTO Banks(BankName, BankMFO, BankAdress)
  SELECT b.nazv_bank, b.kod_bank, b.adres_bank FROM bank b
GO*/      

/* Клиенты */
/*DELETE FROM Clients;
GO
INSERT INTO Clients (ClientName, ClientAdress, ClientUNP, ClientTypeRefId, MinistryRefId, BudgetTypeRefId, ClientCode)
  SELECT o.nazv, o.adres, o.unn, o.tiporg + 1,
    (SELECT mr.MinistryRefId FROM MinistryRef mr WHERE mr.MinistryName = 'Министерство ' + o._min),
    o.tipbud + 1, o.kodorg 
  FROM org o;
GO*/
/* проверка */
/*
  SELECT c.*, ctr.ClientTypeName, mr.MinistryName, btr.BudgetTypeRefName,
  (SELECT ctr.ContractTypeName + ' №' +     
      CAST(ct.ContractNum AS VARCHAR(10)) + ' от ' + CAST(ct.ContractDate as VARCHAR(10)) 
    FROM Contracts ct, ContractTypeRef ctr 
    WHERE
      ctr.ContractTypeRefId = ct.ContractTypeRefId AND 
      ct.ClientId = c.ClientId) AS Contract  
  FROM Clients c 
  LEFT JOIN ClientTypeRef ctr ON c.ClientTypeRefId = ctr.ClientTypeRefId 
  LEFT JOIN MinistryRef mr ON c.MinistryRefId = mr.MinistryRefId 
  LEFT JOIN BudgetTypeRef btr ON c.BudgetTypeRefId = btr.BudgetTypeRefId 
*/  

/* Договора ( по умолчанию все на отопление )*/
/*INSERT INTO Contracts (ContractNum, ContractDate, ContractTypeRefId, ClientId)
  SELECT o.ndog, o.datadog, 1, 
    (SELECT c.ClientId FROM Clients c WHERE c.ClientCode = o.kodorg)
  FROM org o
  WHERE (o.ndog IS NOT NULL) or (o.ndog <> 0)
GO
*/

/* Счета */
/*
INSERT INTO Accounts (AccNum, ClientId, BankId, IsMain)  
SELECT o.rschet,  
  (SELECT c.ClientId FROM Clients c WHERE c.ClientCode = o.kodorg),
  (SELECT b.BankId FROM Banks b WHERE b.BankMFO = o.kodbank), 1
FROM org o
*/
/*
SELECT 'расчетный счет ' + a.AccNum + ' в банке ' + b.BankName + ' код банка ' + b.BankMFO  FROM 
  Accounts a, Banks b WHERE a.BankId = b.BankId
*/