INSERT INTO eg_roleaction (actionid, roleid) select (select id from eg_action where name in ('legalCaseDetailsByCaseNumber', 'Rest SewerageTax Dues')), id from eg_role where name in ('Court Case Initiator','Court Case Approver');


