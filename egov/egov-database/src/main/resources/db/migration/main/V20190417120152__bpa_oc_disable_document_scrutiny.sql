update eg_appconfig_values set value='NO' where key_id=(select id from eg_appconfig  where key_name ='OC_DOCUMENT_SCRUTINY_INTEGRATION_REQUIRED');