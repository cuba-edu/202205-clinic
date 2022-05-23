alter table CLINIC_VISIT add column NUMBER_ bigint ^
update CLINIC_VISIT set NUMBER_ = 0 where NUMBER_ is null ;
alter table CLINIC_VISIT alter column NUMBER_ set not null ;
