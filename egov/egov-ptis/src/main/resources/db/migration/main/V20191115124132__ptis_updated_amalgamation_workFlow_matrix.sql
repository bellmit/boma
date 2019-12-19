delete from eg_wf_matrix where objecttype = 'PropertyImpl' and additionalrule='AMALGAMATION';

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:NEW', NULL, 'Assistant Approval Pending', 'Senior Assistant,Junior Assistant', 'AMALGAMATION', 'Amalgamation:Assistant Approved', 'Bill Collector Approval Pending', 'Bill Collector', 'Assistant Approved', 'Create', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Assistant Approved', NULL, 'Bill Collector Approval Pending', 'Bill Collector', 'AMALGAMATION', 'Amalgamation:Bill Collector Approved', 'UD Revenue Inspector Approval Pending', 'UD Revenue Inspector', 'Bill Collector Approved', 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Bill Collector Approved', NULL, 'UD Revenue Inspector Approval Pending', 'UD Revenue Inspector', 'AMALGAMATION', 'Amalgamation:UD Revenue Inspector Approved', 'Revenue Officer Approval Pending', 'Revenue officer', 'UD Revenue Inspector Approved', 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:UD Revenue Inspector Approved', NULL, 'Revenue Officer Approval Pending', 'Revenue officer', 'AMALGAMATION', 'Amalgamation:Revenue Officer Approved', NULL, 'Assistant Commissioner,Zonal Commissioner,Deputy Commissioner,Additional Commissioner,Commissioner','Revenue Officer Approved', 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');

--Revenue Officer
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Revenue Officer Approved', NULL, 'Assistant Commissioner Approval Pending', 'Assistant Commissioner', 'AMALGAMATION', 'Amalgamation:Assistant Commissioner Approved', 'Digital Signature Pending', 'Zonal Commissioner,Deputy Commissioner,Additional Commissioner,Commissioner','Assistant Commissioner Approved', 'Forward,Approve,Reject,Reject To Cancel', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Revenue Officer Approved', NULL, 'Zonal Commissioner Approval Pending', 'Zonal Commissioner', 'AMALGAMATION', 'Amalgamation:Zonal Commissioner Approved', 'Digital Signature Pending', 'Deputy Commissioner,Additional Commissioner,Commissioner','Assistant Commissioner Approved', 'Forward,Approve,Reject,Reject To Cancel', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Revenue Officer Approved', NULL, 'Deputy Commissioner Approval Pending', 'Deputy Commissioner', 'AMALGAMATION', 'Amalgamation:Deputy Commissioner Approved', 'Digital Signature Pending', 'Additional Commissioner,Commissioner','Deputy Commissioner Approved', 'Forward,Approve,Reject,Reject To Cancel', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Revenue Officer Approved', NULL, 'Additional Commissioner Approval Pending', 'Additional Commissioner', 'AMALGAMATION', 'Amalgamation:Additional Commissioner Approved', 'Digital Signature Pending', 'Commissioner','Additional Commissioner Approved', 'Forward,Approve,Reject,Reject To Cancel', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Revenue Officer Approved', NULL, 'Commissioner Approval Pending', 'Commissioner', 'AMALGAMATION', 'Amalgamation:Commissioner Approved', 'Digital Signature Pending', 'Commissioner','Commissioner Approved', 'Approve,Reject,Reject To Cancel', NULL, NULL, '2015-04-01', '2099-04-01');



--Assistant Commissioner
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Assistant Commissioner Approved', NULL, 'Zonal Commissioner Approval Pending', 'Zonal Commissioner', 'AMALGAMATION', 'Amalgamation:Zonal Commissioner Approved', 'Digital Signature Pending', 'Deputy Commissioner,Additional Commissioner,Commissioner','Assistant Commissioner Approved', 'Forward,Approve,Reject,Reject To Cancel', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Assistant Commissioner Approved', NULL, 'Digital Signature Pending', 'Zonal Commissioner', 'AMALGAMATION', 'Amalgamation:Zonal Commissioner Approved', NULL, 'Deputy Commissioner,Additional Commissioner,Commissioner',NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Assistant Commissioner Approved', NULL, 'Deputy Commissioner Approval Pending', 'Deputy Commissioner', 'AMALGAMATION', 'Amalgamation:Deputy Commissioner Approved', 'Digital Signature Pending', 'Additional Commissioner,Commissioner','Deputy Commissioner Approved', 'Forward,Approve,Reject,Reject To Cancel', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Assistant Commissioner Approved', NULL, 'Digital Signature Pending', 'Deputy Commissioner', 'AMALGAMATION', 'Amalgamation:Deputy Commissioner Approved', NULL, 'Additional Commissioner,Commissioner',NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Assistant Commissioner Approved', NULL, 'Additional Commissioner Approval Pending', 'Additional Commissioner', 'AMALGAMATION', 'Amalgamation:Additional Commissioner Approved', 'Digital Signature Pending', 'Commissioner','Additional Commissioner Approved', 'Forward,Approve,Reject,Reject To Cancel', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Assistant Commissioner Approved', NULL, 'Digital Signature Pending', 'Assistant Commissioner', 'AMALGAMATION', 'Amalgamation:Assistant Commissioner Approved', NULL, 'Zonal Commissioner,Deputy Commissioner,Additional Commissioner,Commissioner',NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Assistant Commissioner Approved', NULL, 'Commissioner Approval Pending', 'Commissioner', 'AMALGAMATION', 'Amalgamation:Commissioner Approved', 'Digital Signature Pending', 'Commissioner','Commissioner Approved', 'Forward,Approve,Reject,Reject To Cancel', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Assistant Commissioner Approved', NULL, 'Digital Signature Pending', 'Additional Commissioner', 'AMALGAMATION', 'Amalgamation:Additional Commissioner Approved', NULL, 'Commissioner',NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');

----Zonal Commissioner
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Zonal Commissioner Approved', NULL, 'Digital Signature Pending', 'Deputy Commissioner', 'AMALGAMATION', 'Amalgamation:Deputy Commissioner Approved', NULL, 'Additional Commissioner,Commissioner',NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Zonal Commissioner Approved', NULL, 'Deputy Commissioner Approval Pending', 'Deputy Commissioner', 'AMALGAMATION', 'Amalgamation:Deputy Commissioner Approved', 'Digital Signature Pending', 'Additional Commissioner,Commissioner',NULL, 'Forward,Approve,Reject,Reject To Cancel', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Zonal Commissioner Approved', NULL, 'Digital Signature Pending', 'Additional Commissioner', 'AMALGAMATION', 'Amalgamation:Additional Commissioner Approved', NULL, 'Commissioner',NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Zonal Commissioner Approved', NULL, 'Additional Commissioner Approval Pending', 'Additional Commissioner', 'AMALGAMATION', 'Amalgamation:Additional Commissioner Approved', 'Digital Signature Pending', 'Commissioner',NULL, 'Forward,Approve,Reject,Reject To Cancel', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Zonal Commissioner Approved', NULL, 'Commissioner Approval Pending', 'Commissioner', 'AMALGAMATION', 'Amalgamation:Commissioner Approved', 'Digital Signature Pending', 'Commissioner',NULL, 'Forward,Approve,Reject,Reject To Cancel', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Zonal Commissioner Approved', NULL, 'Digital Signature Pending', 'Commissioner', 'AMALGAMATION', 'Amalgamation:Commissioner Approved', NULL, 'Commissioner',NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Zonal Commissioner Approved', NULL, 'Digital Signature Pending', 'Zonal Commissioner', 'AMALGAMATION', 'Amalgamation:Zonal Commissioner Approved', NULL, 'Deputy Commissioner,Additional Commissioner,Commissioner',NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');

----Deputy Commissioner
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Deputy Commissioner Approved', NULL, 'Additional Commissioner Approval Pending', 'Additional Commissioner', 'AMALGAMATION', 'Amalgamation:Additional Commissioner Approved', 'Digital Signature Pending', 'Commissioner','Additional Commissioner Approved', 'Forward,Approve,Reject,Reject To Cancel', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Deputy Commissioner Approved', NULL, 'Digital Signature Pending', 'Additional Commissioner', 'AMALGAMATION', 'Amalgamation:Additional Commissioner Approved', NULL, 'Commissioner',NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Deputy Commissioner Approved', NULL, 'Digital Signature Pending', 'Deputy Commissioner', 'AMALGAMATION', 'Amalgamation:Deputy Commissioner Approved', NULL, 'Additional Commissioner,Commissioner',NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Deputy Commissioner Approved', NULL, 'Commissioner Approval Pending', 'Commissioner', 'AMALGAMATION', 'Amalgamation:Commissioner Approved', 'Digital Signature Pending', 'Commissioner','Commissioner Approved', 'Approve,Reject,Reject To Cancel', NULL, NULL, '2015-04-01', '2099-04-01');


--Additional Commissioner
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Additional Commissioner Approved', NULL, 'Commissioner Approval Pending', 'Commissioner', 'AMALGAMATION', 'Amalgamation:Commissioner Approved', 'Digital Signature Pending', 'Commissioner','Commissioner Approved', 'Approve,Reject,Reject To Cancel', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Additional Commissioner Approved', NULL, 'Digital Signature Pending', 'Additional Commissioner', 'AMALGAMATION', 'Amalgamation:Additional Commissioner Approved', NULL, 'Commissioner',NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');

--Commissioner
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Commissioner Approved', NULL, 'Digital Signature Pending', 'Commissioner', 'AMALGAMATION', 'Amalgamation:Digitally Signed', 'Notice Print Pending', NULL, NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Digitally Signed', NULL, 'Notice Print Pending', 'Senior Assistant,Junior Assistant', 'AMALGAMATION', 'Amalgamation:END', 'END', NULL, NULL, 'Generate Notice', NULL, NULL, '2015-04-01', '2099-04-01');

----Rejection and common
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Rejected', NULL, 'Assistant Approval Pending', 'Senior Assistant,Junior Assistant', 'AMALGAMATION', 'Amalgamation:Assistant Approved', 'Bill Collector Approval Pending', 'Bill Collector', NULL, 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Created', NULL, NULL, 'NULL', 'AMALGAMATION', 'Amalgamation:NEW', 'Assistant Approval Pending', 'Senior Assistant,Junior Assistant', 'Assistant Approved', 'Forward', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Rejected', NULL, 'UD Revenue Inspector Approval Pending', 'UD Revenue Inspector', 'AMALGAMATION', 'Amalgamation:UD Revenue Inspector Approved', 'Revenue Officer Approval Pending', 'Revenue officer', NULL, 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');

-----Rejection to cancel


INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Rejected to Cancel', NULL, 'Digital Signature Pending', 'Assistant Commissioner', 'AMALGAMATION', 'Amalgamation:Rejected to Cancel', NULL, 'Zonal Commissioner,Deputy Commissioner,Additional Commissioner,Commissioner',NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Rejected to Cancel', NULL, 'Digital Signature Pending', 'Zonal Commissioner', 'AMALGAMATION', 'Amalgamation:Rejected to Cancel', NULL, 'Deputy Commissioner,Additional Commissioner,Commissioner',NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Rejected to Cancel', NULL, 'Digital Signature Pending', 'Deputy Commissioner', 'AMALGAMATION', 'Amalgamation:Rejected to Cancel', NULL, 'Additional Commissioner,Commissioner',NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');


INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Rejected to Cancel', NULL, 'Digital Signature Pending', 'Additional Commissioner', 'AMALGAMATION', 'Amalgamation:Rejected to Cancel', NULL, 'Commissioner',NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Rejected to Cancel', NULL, 'Digital Signature Pending', 'Commissioner', 'AMALGAMATION', 'Amalgamation:Rejected to Cancel', NULL, 'Commissioner',NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');


INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Rejected to Cancel', NULL, 'Digital Signature Pending', 'Assistant Commissioner', 'AMALGAMATION', 'Amalgamation:Digitally Signed', 'Notice Print Pending', NULL, NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');


INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Rejected to Cancel', NULL, 'Digital Signature Pending', 'Zonal Commissioner', 'AMALGAMATION', 'Amalgamation:Digitally Signed', 'Notice Print Pending', NULL, NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');


INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Rejected to Cancel', NULL, 'Digital Signature Pending', 'Deputy Commissioner', 'AMALGAMATION', 'Amalgamation:Digitally Signed', 'Notice Print Pending', NULL, NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');


INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Rejected to Cancel', NULL, 'Digital Signature Pending', 'Additional Commissioner', 'AMALGAMATION', 'Amalgamation:Digitally Signed', 'Notice Print Pending', NULL, NULL, 'Forward,Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');


INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (NEXTVAL('seq_eg_wf_matrix'), 'ANY', 'PropertyImpl', 'Amalgamation:Rejected to Cancel', NULL, 'Digital Signature Pending', 'Commissioner', 'AMALGAMATION', 'Amalgamation:Digitally Signed', 'Notice Print Pending', NULL, NULL, 'Preview,Sign', NULL, NULL, '2015-04-01', '2099-04-01');

