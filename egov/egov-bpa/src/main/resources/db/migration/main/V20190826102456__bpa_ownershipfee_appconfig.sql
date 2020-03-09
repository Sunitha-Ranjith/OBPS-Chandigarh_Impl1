


INSERT INTO eg_appconfig ( ID, KEY_NAME, DESCRIPTION, VERSION, MODULE ) VALUES (nextval('SEQ_EG_APPCONFIG'), 'OWNERSHIPAPPLNFEECOLLECTIONREQUIRED', 'ownership application fee collection required or not',0, (select id from eg_module where name='BPA'));

INSERT INTO eg_appconfig_values ( ID, KEY_ID, EFFECTIVE_FROM, VALUE, VERSION ) VALUES (nextval('SEQ_EG_APPCONFIG_VALUES'),(SELECT id FROM EG_APPCONFIG WHERE KEY_NAME='OWNERSHIPAPPLNFEECOLLECTIONREQUIRED' AND MODULE =(select id from eg_module where name='BPA')),current_date, 'NO',0);


INSERT INTO eg_appconfig ( ID, KEY_NAME, DESCRIPTION, VERSION, MODULE ) VALUES (nextval('SEQ_EG_APPCONFIG'), 'OWNERSHIPFEECOLLECTIONREQUIRED', 'ownership fee collection required or not',0, (select id from eg_module where name='BPA'));

INSERT INTO eg_appconfig_values ( ID, KEY_ID, EFFECTIVE_FROM, VALUE, VERSION ) VALUES (nextval('SEQ_EG_APPCONFIG_VALUES'),(SELECT id FROM EG_APPCONFIG WHERE KEY_NAME='OWNERSHIPFEECOLLECTIONREQUIRED' AND MODULE =(select id from eg_module where name='BPA')),current_date, 'YES',0);

