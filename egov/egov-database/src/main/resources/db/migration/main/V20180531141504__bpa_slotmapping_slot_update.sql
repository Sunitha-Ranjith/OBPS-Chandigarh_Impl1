update egbpa_mstr_slotmapping set zone = (select id from eg_boundary where name = 'ZONE-1 (MAIN OFFICE)') where zone = (select id from eg_boundary where name = 'ZONE-1 SOUTH (MAIN OFFICE)');
update egbpa_slot set zone = (select id from eg_boundary where name = 'ZONE-1 (MAIN OFFICE)') where zone = (select id from eg_boundary where name = 'ZONE-1 SOUTH (MAIN OFFICE)');