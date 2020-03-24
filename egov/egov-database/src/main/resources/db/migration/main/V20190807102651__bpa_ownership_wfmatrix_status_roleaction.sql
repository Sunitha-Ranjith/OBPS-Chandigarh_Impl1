---Autogenerate ownership number appconfig

Insert into eg_appconfig (ID,KEY_NAME,DESCRIPTION,MODULE) values 
(nextval('seq_eg_appconfig'),'AUTOGENERATE_OWNERSHIP_NUMBER','ownership number to be autogenerated for change in ownership',(select id from eg_module where name='BPA'));


Insert into eg_appconfig_values (ID,KEY_ID,EFFECTIVE_FROM,VALUE) values 
(nextval('seq_eg_appconfig_values'),(select id from eg_appconfig where KEY_NAME ='AUTOGENERATE_OWNERSHIP_NUMBER'),current_date,'NO');


---Ownership Transfer Workflow matrix

INSERT INTO eg_wf_types (id, module, type, link, createdby, createddate, lastmodifiedby, lastmodifieddate, enabled, grouped, typefqn, displayname, version)
 VALUES (nextval('seq_eg_wf_types'), (select id from eg_module where name='BPA'), 'OwnershipTransfer', '/bpa/application/ownership/update/:ID', 1, now(), 1, now(), 'Y', 'N', 'org.egov.bpa.transaction.entity.OwnershipTransfer', 'Ownership Transfer Application', 0);


INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate)
 VALUES (nextval('seq_eg_wf_matrix'), 'ANY', 'OwnershipTransfer', 'new', NULL, 'Ownership tranfer application creation pending', NULL, 'Low Risk', 'Initiated for ownership transfer', 'Forwarded to section clerk', 'Section Clerk', 'Registered', 'Forward', NULL, NULL, now(), '2099-04-01');

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate)
 VALUES (nextval('seq_eg_wf_matrix'), 'ANY', 'OwnershipTransfer', 'Initiated for ownership transfer', 'Registered', 'Forwarded to section clerk', NULL, 'Low Risk', 'Section clerk approved', 'Approver approval pending', 'Assistant Engineer', 'Registered', 'Forward', NULL, NULL, now(), '2099-04-01');

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate)
 VALUES (nextval('seq_eg_wf_matrix'), 'ANY', 'OwnershipTransfer', 'Section clerk approved', 'Approved', 'Approver approval pending', NULL, 'Low Risk', 'Record approved', 'Ownership transfer fee payment pending', 'Assistant Engineer', 'Approved', 'Approve,Reject', 0, 300, now(), '2099-04-01');

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate)
 VALUES (nextval('seq_eg_wf_matrix'), 'ANY', 'OwnershipTransfer', 'Record approved', 'Approved', 'Ownership transfer fee payment pending', NULL, 'Low Risk', 'Ownership transfer fee payment done', 'Forwarded to generate ownership transfer order', 'Assistant Engineer', 'Approved', '', 0, 300, now(), '2099-04-01');

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate)
 VALUES (nextval('seq_eg_wf_matrix'), 'ANY', 'OwnershipTransfer', 'Ownership transfer fee payment done', 'Approved', 'Forwarded to generate ownership transfer order', NULL, 'Low Risk', 'END', 'END', 'Assistant Engineer', 'Order Issued to Applicant', 'Generate Ownership Transfer Order', 0, 300, now(), '2099-04-01');



INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate)
 VALUES (nextval('seq_eg_wf_matrix'), 'ANY', 'OwnershipTransfer', 'new', NULL, 'Ownership transfer application creation pending', NULL, 'Medium Risk', 'Initiated for ownership transfer', 'Forwarded to section clerk', 'Section Clerk', 'Registered', 'Forward', NULL, NULL, now(), '2099-04-01');

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate)
 VALUES (nextval('seq_eg_wf_matrix'), 'ANY', 'OwnershipTransfer', 'Initiated for ownership transfer', 'Registered', 'Forwarded to section clerk', NULL, 'Medium Risk', 'Section clerk approved', 'Approver approval pending', 'Assistant Engineer', 'Registered', 'Forward', NULL, NULL, now(), '2099-04-01');

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate)
 VALUES (nextval('seq_eg_wf_matrix'), 'ANY', 'OwnershipTransfer', 'Section clerk approved', 'Approved', 'Approver approval pending', NULL, 'Medium Risk', 'Record approved', 'Ownership transfer fee payment pending', 'Assistant Engineer', 'Approved', 'Approve,Reject', 300, 2500, now(), '2099-04-01');

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate)
 VALUES (nextval('seq_eg_wf_matrix'), 'ANY', 'OwnershipTransfer', 'Record approved', 'Approved', 'Ownership transfer fee payment pending', NULL, 'Medium Risk', 'Ownership transfer fee payment done', 'Forwarded to generate ownership transfer order', 'Assistant Engineer', 'Approved', '', 300, 2500, now(), '2099-04-01');

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate)
 VALUES (nextval('seq_eg_wf_matrix'), 'ANY', 'OwnershipTransfer', 'Ownership transfer fee payment done', 'Approved', 'Forwarded to generate ownership transfer order', NULL, 'Medium Risk', 'END', 'END', 'Assistant Engineer', 'Order Issued to Applicant', 'Generate Ownership Transfer Order', 300, 2500, now(), '2099-04-01');



INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate)
 VALUES (nextval('seq_eg_wf_matrix'), 'ANY', 'OwnershipTransfer', 'new', NULL, 'Ownership transfer application creation pending', NULL, 'High Risk', 'Initiated for ownership transfer', 'Forwarded to section clerk', 'Section Clerk', 'Registered', 'Forward', NULL, NULL, now(), '2099-04-01');

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate)
 VALUES (nextval('seq_eg_wf_matrix'), 'ANY', 'OwnershipTransfer', 'Initiated for ownership transfer', 'Registered', 'Forwarded to section clerk', NULL, 'High Risk', 'Section clerk approved', 'Approver approval pending', 'Assistant Engineer', 'Registered', 'Forward', NULL, NULL, now(), '2099-04-01');

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate)
 VALUES (nextval('seq_eg_wf_matrix'), 'ANY', 'OwnershipTransfer', 'Section clerk approved', 'Approved', 'Approver approval pending', NULL, 'High Risk', 'Record approved', 'Ownership transfer fee payment pending', 'Assistant Engineer', 'Approved', 'Approve,Reject', 2500, 1000000, now(), '2099-04-01');

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate)
 VALUES (nextval('seq_eg_wf_matrix'), 'ANY', 'OwnershipTransfer', 'Record approved', 'Approved', 'Ownership transfer fee payment pending', NULL, 'High Risk', 'Ownership transfer fee payment done', 'Forwarded to generate ownership transfer order', 'Assistant Engineer', 'Approved', '', 2500, 1000000, now(), '2099-04-01');

INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate)
 VALUES (nextval('seq_eg_wf_matrix'), 'ANY', 'OwnershipTransfer', 'Ownership transfer fee payment done', 'Approved', 'Forwarded to generate ownership transfer order', NULL, 'High Risk', 'END', 'END', 'Assistant Engineer', 'Order Issued to Applicant', 'Generate Ownership Transfer Order', 2500, 1000000, now(), '2099-04-01');



---Ownership transfer status

Insert into EGBPA_STATUS (ID,MODULETYPE,description,LASTMODIFIEDDATE,CODE,isactive,version,createdby,createddate)
 values (nextval('SEQ_EGBPA_STATUS'),'OWNERSHIP','Created',now(),'Created',true,0,1,now());

Insert into EGBPA_STATUS (ID,MODULETYPE,description,LASTMODIFIEDDATE,CODE,isactive,version,createdby,createddate)
 values (nextval('SEQ_EGBPA_STATUS'),'OWNERSHIP','Registered',now(),'Registered',true,0,1,now());

Insert into EGBPA_STATUS (ID,MODULETYPE,description,LASTMODIFIEDDATE,CODE,isactive,version,createdby,createddate)
 values (nextval('SEQ_EGBPA_STATUS'),'OWNERSHIP','Approved',now(),'Approved',true,0,1,now());

Insert into EGBPA_STATUS (ID,MODULETYPE,description,LASTMODIFIEDDATE,CODE,isactive,version,createdby,createddate)
 values (nextval('SEQ_EGBPA_STATUS'),'OWNERSHIP','Order Issued to Applicant',now(),'Order Issued to Applicant',true,0,1,now());

Insert into EGBPA_STATUS (ID,MODULETYPE,description,LASTMODIFIEDDATE,CODE,isactive,version,createdby,createddate)
 values (nextval('SEQ_EGBPA_STATUS'),'OWNERSHIP','Rejected',now(),'Rejected',true,0,1,now());


