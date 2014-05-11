-- WCT 1.6 UPGRADE   
alter table db_wct.TARGET_INSTANCE add TI_FLAG_OID number(10,0);
alter table db_wct.TARGET_INSTANCE add TI_RECOMMENDATION varchar2(255);

create table db_wct.FLAG (F_OID number(19,0) not null, F_NAME varchar2(255) not null, F_RGB varchar2(6) not null, F_COMPLEMENT_RGB varchar2(6) not null, F_AGC_OID number(19,0) not null, primary key (F_OID));
alter table db_wct.FLAG add constraint FK_F_AGENCY_OID foreign key (F_AGC_OID) references db_wct.AGENCY (AGC_OID);
alter table db_wct.TARGET_INSTANCE add constraint FK_F_OID foreign key (TI_FLAG_OID) references db_wct.FLAG (F_OID);
create table db_wct.INDICATOR_CRITERIA (IC_OID number(19,0) not null, IC_NAME varchar2(255) not null, IC_DESCRIPTION varchar2(255), IC_UPPER_LIMIT_PERCENTAGE double precision, IC_LOWER_LIMIT_PERCENTAGE double precision, IC_UPPER_LIMIT double precision, IC_LOWER_LIMIT double precision, IC_AGC_OID number(19,0) not null, primary key (IC_OID), IC_UNIT varchar2(20) not null, IC_SHOW_DELTA number(1,0) not null, IC_ENABLE_REPORT number(1,0) not null);
alter table db_wct.INDICATOR_CRITERIA add constraint FK_IC_AGENCY_OID foreign key (IC_AGC_OID) references db_wct.AGENCY (AGC_OID);
create table db_wct.INDICATOR (I_OID number(19,0) not null, I_IC_OID number(19,0) not null, I_TI_OID number(19,0) not null, I_NAME varchar2(255) not null, I_FLOAT_VALUE double precision, I_UPPER_LIMIT_PERCENTAGE double precision, I_LOWER_LIMIT_PERCENTAGE double precision, I_UPPER_LIMIT double precision, I_LOWER_LIMIT double precision, I_ADVICE varchar2(255), I_JUSTIFICATION varchar2(255), I_AGC_OID number(19,0) not null , primary key (I_OID), I_UNIT varchar2(20) not null, I_SHOW_DELTA number(1,0) not null, I_INDEX number(10,0), I_DATE TIMESTAMP not null);
alter table db_wct.INDICATOR add constraint FK_I_TI_OID foreign key (I_TI_OID) references db_wct.TARGET_INSTANCE (TI_OID) on delete cascade;
alter table db_wct.INDICATOR add constraint FK_I_IC_OID foreign key (I_IC_OID) references db_wct.INDICATOR_CRITERIA (IC_OID);
alter table db_wct.INDICATOR add constraint FK_I_AGENCY_OID foreign key (I_AGC_OID) references db_wct.AGENCY (AGC_OID);
create table db_wct.INDICATOR_REPORT_LINE (IRL_OID number(19,0), IRL_I_OID number(19,0), IRL_LINE varchar2(1024), IRL_INDEX number(10,0));
alter table db_wct.INDICATOR_REPORT_LINE add constraint FK_IRL_I_OID foreign key (IRL_I_OID) references db_wct.INDICATOR (I_OID);
alter table db_wct.ABSTRACT_TARGET add (AT_CRAWLS number(19,0));
alter table db_wct.ABSTRACT_TARGET add (AT_REFERENCE_CRAWL_OID number(19,0));
alter table db_wct.ABSTRACT_TARGET add (AT_AUTO_PRUNE number(1,0) default 0 not null);
alter table db_wct.ABSTRACT_TARGET add (AT_AUTO_DENOTE_REFERENCE_CRAWL number(1,0) default 0 not null);
GRANT SELECT, INSERT, UPDATE, DELETE ON DB_WCT.INDICATOR TO USR_WCT;
GRANT SELECT, INSERT, UPDATE, DELETE ON DB_WCT.INDICATOR_CRITERIA TO USR_WCT;
GRANT SELECT, INSERT, UPDATE, DELETE ON DB_WCT.INDICATOR_REPORT_LINE TO USR_WCT;
GRANT SELECT, INSERT, UPDATE, DELETE ON DB_WCT.FLAG TO USR_WCT;
CREATE UNIQUE INDEX IX_I_OID ON DB_WCT.INDICATOR(I_OID);
CREATE UNIQUE INDEX IX_IRL_OID ON DB_WCT.INDICATOR_REPORT_LINE(IRL_OID);
CREATE INDEX IX_IRL_I_OID ON DB_WCT.INDICATOR_REPORT_LINE(IRL_I_OID);

-- added for performance	
CREATE INDEX IX_TI_TARGET_ID ON DB_WCT.TARGET_INSTANCE(TI_TARGET_ID);
CREATE INDEX IX_TI_SCHEDULE_ID ON DB_WCT.TARGET_INSTANCE(TI_SCHEDULE_ID);
CREATE INDEX IX_TI_PROFILE_ID ON DB_WCT.TARGET_INSTANCE(TI_PROFILE_ID);
CREATE INDEX IX_TI_FLAG_OID ON DB_WCT.TARGET_INSTANCE(TI_FLAG_OID);
CREATE INDEX IX_HR_TARGET_INSTANCE_ID ON DB_WCT.HARVEST_RESULT(HR_TARGET_INSTANCE_ID);
CREATE INDEX IX_S_TARGET_ID ON DB_WCT.SEED(S_TARGET_ID);
CREATE INDEX IX_PU_PERMISSION_ID ON DB_WCT.PERMISSION_URLPATTERN(PU_PERMISSION_ID);
CREATE INDEX IX_AHF_ARC_HARVEST_RESULT_ID ON DB_WCT.ARC_HARVEST_FILE(AHF_ARC_HARVEST_RESULT_ID);
CREATE INDEX IX_TIOS_TI_OID ON DB_WCT.TARGET_INSTANCE_ORIG_SEED(TIOS_TI_OID);
CREATE INDEX IX_SH_TI_OID ON DB_WCT.SEED_HISTORY(SH_TI_OID);

-- Added to prevent upgrade problems
alter table db_wct.ABSTRACT_TARGET add (AT_REQUEST_TO_ARCHIVISTS varchar(4000));
