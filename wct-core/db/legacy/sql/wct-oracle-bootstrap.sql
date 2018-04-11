insert into DB_WCT.AGENCY (AGC_OID,AGC_NAME,AGC_ADDRESS) values (0,'bootstrap', 'NA');
insert into DB_WCT.WCTUSER (USR_OID, USR_ACTIVE, USR_EMAIL, USR_EXTERNAL_AUTH, USR_FIRSTNAME, USR_LASTNAME, USR_NOTIFICATIONS_BY_EMAIL, USR_PASSWORD, USR_USERNAME, USR_FORCE_PWD_CHANGE, USR_AGC_OID, USR_TASKS_BY_EMAIL,  USR_NOTIFY_ON_GENERAL,  USR_NOTIFY_ON_WARNINGS) values (0, 1, 'bootstrap@sytec.co.nz', 0, 'System', 'Bootstrap', 0, '2cef312836577798919e66999e80487a349b83bd', 'bootstrap', 0,0,0,0,0);
insert into DB_WCT.WCTROLE (ROL_OID, ROL_DESCRIPTION, ROL_NAME, ROL_AGENCY_OID) values(0,'Bootstrap Role', 'Bootstrap Role',0);
insert into DB_WCT.USER_ROLE (URO_USR_OID, URO_ROL_OID) values (0,0);
insert into DB_WCT.ROLE_PRIVILEGE (PRV_OID, PRV_CODE, PRV_ROLE_OID, PRV_SCOPE) values (0,'LOGIN',0,0);
insert into DB_WCT.ROLE_PRIVILEGE (PRV_OID, PRV_CODE, PRV_ROLE_OID, PRV_SCOPE) values (-1,'MANAGE_AGENCIES',0,0);
insert into DB_WCT.ROLE_PRIVILEGE (PRV_OID, PRV_CODE, PRV_ROLE_OID, PRV_SCOPE) values (-2,'MANAGE_USERS',0,0);
insert into DB_WCT.ROLE_PRIVILEGE (PRV_OID, PRV_CODE, PRV_ROLE_OID, PRV_SCOPE) values (-3,'MANAGE_ROLES',0,0);
insert into DB_WCT.ROLE_PRIVILEGE (PRV_OID, PRV_CODE, PRV_ROLE_OID, PRV_SCOPE) values (-4,'GRANT_CROSS_AGENCY_USER_ADMIN',0,0);