/*DELETE FROM Clients;
GO
INSERT INTO Clients (ClientName, ClientAdress, ClientUNP, ClientTypeRefId, MinistryRefId, BudgetTypeRefId, ClientCode)
  SELECT o.nazv, o.adres, o.unn, o.tiporg + 1,
    (SELECT mr.MinistryRefId FROM MinistryRef mr WHERE mr.MinistryName = 'Министерство ' + o._min),
    o.tipbud + 1, o.kodorg 
  FROM org o;
GO*/
/* проверка */
SELECT c.*, ctr.ClientTypeName, mr.MinistryName, btr.BudgetTypeRefName 
  FROM Clients c 
  LEFT JOIN ClientTypeRef ctr ON c.ClientTypeRefId = ctr.ClientTypeRefId 
  LEFT JOIN MinistryRef mr ON c.MinistryRefId = mr.MinistryRefId 
  LEFT JOIN BudgetTypeRef btr ON c.BudgetTypeRefId = btr.BudgetTypeRefId  