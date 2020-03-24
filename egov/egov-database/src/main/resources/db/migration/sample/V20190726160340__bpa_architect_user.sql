insert into state.eg_user (id, tenantid, locale, username, password, pwdexpirydate, mobilenumber, createddate, lastmodifieddate, createdby, lastmodifiedby, active, name, gender, type, version) select nextval('state.seq_eg_user'), 'state', 'en_IN', 'architect', '$2a$10$uheIOutTnD33x7CDqac1zOL8DMiuz7mWplToPgcf7oxAI9OzRKxmK', '31-Dec-2099', '1234567891', current_date, current_date, 1, 1, true, 'Architect', 1, 'BUSINESS', 0 where not exists (select id from state.eg_user where username='architect' and tenantid='state');
insert into state.eg_userrole (roleid, userid) select (select id from eg_role where upper(name)='BUSINESS'), (select id from state.eg_user where username='architect' and tenantid='state') where not exists (select roleid,userid from state.eg_userrole where roleid in (select id from eg_role where upper(name)='BUSINESS') and userid in (select id from state.eg_user where username='architect' and tenantid='state'));

INSERT INTO state.eg_address (housenobldgapt, subdistrict, postoffice, landmark, country, userid, type, streetroadline, citytownvillage, arealocalitysector, district, state, pincode, id, version) select '12/2', null, 'Test post', null, 'india', (select id from state.eg_user where username='architect' and tenantid='state'), 'CORRESPONDENCE', 'Dollar street', 'Koramangala', 'Koramangala', 'Bengaluru', 'Karnataka', '560037', nextval('state.seq_eg_address'), 0 where not exists (select id from state.eg_address where housenobldgapt='12/2');

INSERT INTO state.egbpa_mstr_stakeholder (id, stakeholdertype, code, licencenumber, buildinglicenceissuedate, coaenrolmentnumber, coaenrolmentduedate, isenrolwithlocalbody, organizationname, organizationaddress, organizationurl, organizationmobno, isonbehalfoforganization, tinnumber, version, createduser, createdate, lastupdateduser, lastupdateddate, buildinglicenceexpirydate, contactperson, designation, source, comments, status, isaddresssame, nooftimesrejected, nooftimesblocked, demand, cinnumber) select (select id from state.eg_user where username='architect' and tenantid='state'), 1, 'SH07201900123', '123423424', '2019-04-01 00:00:00', null, null, null, null, null, null, null, false, null, 0, 1, now(), 1, now(), '2020-04-09 13:20:49.463', null, null, 3, '', 'APPROVED', true, null, null, null, null where not exists (select id from state.egbpa_mstr_stakeholder where code='SH07201900123');
			
insert into state.eg_businessuser (id) select id from state.eg_user where username='architect' and tenantid='state' and not exists (select id from state.eg_businessuser where id = (select id from state.eg_user where username='architect' and tenantid='state'));
