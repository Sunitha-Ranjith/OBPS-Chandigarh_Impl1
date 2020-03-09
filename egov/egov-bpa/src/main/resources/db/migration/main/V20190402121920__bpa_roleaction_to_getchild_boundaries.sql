Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) 
values (nextval('SEQ_EG_ACTION'), 'Get Child Boundaries', '/boundary/ajax-child-boundary', null, (select id from eg_module where name='BPA Transanctions'), (select max(ordernumber)+1 from EG_ACTION),'Get Child Boundaries',
'false', 'bpa', 0, 1, now(), 1, now(), (select id from eg_module where name='BPA'));

Insert into eg_roleaction values((select id from eg_role where name='SYSTEM'), (select id from eg_action where name='Get Child Boundaries'));

Insert into eg_roleaction values((select id from eg_role where name='BUSINESS'), (select id from eg_action where name='Get Child Boundaries'));