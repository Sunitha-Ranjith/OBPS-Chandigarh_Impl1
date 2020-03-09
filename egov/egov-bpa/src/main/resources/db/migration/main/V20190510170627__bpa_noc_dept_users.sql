INSERT INTO state.eg_user select nextval('state.seq_eg_user'), NULL, NULL, NULL, NULL, 'en_IN', 'firenoc', '$2a$10$HdKO6xSQWtA/Tlmstu4FyeTsS95GpqJMlcXnbF5t0yEMxs4QyAgZy', '2020-12-31 00:00:00', NULL, NULL, NULL, now(), now(), 1, 1, true, 'Fire NOC Department', NULL, NULL, NULL, 'BUSINESS', 0, NULL, NULL, 'state' where not exists (select * from state.eg_user where username='firenoc');
INSERT into state.eg_userrole select (select id from eg_role where name = 'BPA_FIRE_NOC_ROLE'), (select id from state.eg_user where username ='firenoc') where not exists (SELECT * FROM state.eg_userrole WHERE roleid in (select id from eg_role where name = 'BPA_FIRE_NOC_ROLE'));

INSERT INTO state.eg_user select nextval('state.seq_eg_user'), NULL, NULL, NULL, NULL, 'en_IN', 'airportnoc', '$2a$10$HdKO6xSQWtA/Tlmstu4FyeTsS95GpqJMlcXnbF5t0yEMxs4QyAgZy', '2020-12-31 00:00:00', NULL, NULL, NULL, now(), now(), 1, 1, true, 'Airport Authority Department', NULL, NULL, NULL, 'BUSINESS', 0, NULL, NULL, 'state' where not exists (select * from state.eg_user where username='airportnoc');
INSERT into state.eg_userrole select (select id from eg_role where name = 'BPA_AIPORT_AUTH_NOC_ROLE'), (select id from state.eg_user where username ='airportnoc') where not exists (SELECT * FROM state.eg_userrole WHERE roleid in (select id from eg_role where name = 'BPA_AIPORT_AUTH_NOC_ROLE'));

INSERT INTO state.eg_user select nextval('state.seq_eg_user'), NULL, NULL, NULL, NULL, 'en_IN', 'nmanoc', '$2a$10$HdKO6xSQWtA/Tlmstu4FyeTsS95GpqJMlcXnbF5t0yEMxs4QyAgZy', '2020-12-31 00:00:00', NULL, NULL, NULL, now(), now(), 1, 1, true, 'National Monuments Authority', NULL, NULL, NULL, 'BUSINESS', 0, NULL, NULL, 'state' where not exists (select * from state.eg_user where username='nmanoc');
INSERT into state.eg_userrole select (select id from eg_role where name = 'BPA_NMA_NOC_ROLE'), (select id from state.eg_user where username ='nmanoc') where not exists (SELECT * FROM state.eg_userrole WHERE roleid in (select id from eg_role where name = 'BPA_NMA_NOC_ROLE'));

INSERT INTO state.eg_user select nextval('state.seq_eg_user'), NULL, NULL, NULL, NULL, 'en_IN', 'environmentnoc', '$2a$10$HdKO6xSQWtA/Tlmstu4FyeTsS95GpqJMlcXnbF5t0yEMxs4QyAgZy', '2020-12-31 00:00:00', NULL, NULL, NULL, now(), now(), 1, 1, true, 'MOEF/environment clearance', NULL, NULL, NULL, 'BUSINESS', 0, NULL, NULL, 'state' where not exists (select * from state.eg_user where username='environmentnoc');
INSERT into state.eg_userrole select (select id from eg_role where name = 'BPA_ENVIRONMENT_NOC_ROLE'), (select id from state.eg_user where username ='environmentnoc') where not exists (SELECT * FROM state.eg_userrole WHERE roleid in (select id from eg_role where name = 'BPA_ENVIRONMENT_NOC_ROLE'));
