Insert into EGP_PORTALSERVICE (id,module,code,sla,version,url,isactive,name,userservice,businessuserservice,helpdoclink,createdby,createddate,lastmodifieddate,lastmodifiedby) values(nextval('seq_egp_portalservice'),(select id from eg_module where name='Digit DCR'),'New E-DCR Plan',null,0,'/edcr/edcrapplication/new','true','New E-DCR Plan','true','true','/edcr/edcrapplication/new',1,now(),now(),1);

Insert into EGP_PORTALSERVICE (id,module,code,sla,version,url,isactive,name,userservice,businessuserservice,helpdoclink,createdby,createddate,lastmodifieddate,lastmodifiedby) values(nextval('seq_egp_portalservice'),(select id from eg_module where name='Digit DCR'),'Resubmit E-DCR Plan',null,0,'/edcr/edcrapplication/resubmit','true','Resubmit E-DCR Plan','true','true','/edcr/edcrapplication/resubmit',1,now(),now(),1);