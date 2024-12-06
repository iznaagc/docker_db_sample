drop table if exists MAIL_TEMPLATE;
create table MAIL_TEMPLATE (
  MAIL_TEMPLATE_CODE CHAR(9) not null
  , LANG CHAR(2) not null
  , MAIL_SUBJECT VARCHAR(100) not null
  , CHARSET CHAR(20) not null
  , MAIL_BODY TEXT not null
  , DELETE_DATE TIMESTAMP not null
  , DELETE_FLG CHAR(1) not null
  , VERSION INTEGER not null
  , INSERT_DATE TIMESTAMP not null
  , INSERT_ACCOUNT_ID VARCHAR(10) not null
  , INSERT_REQUEST_CODE VARCHAR(20) not null
  , UPDATE_DATE TIMESTAMP not null
  , UPDATE_ACCOUNT_ID VARCHAR(10) not null
  , UPDATE_REQUEST_CODE VARCHAR(20) not null
  , constraint MAIL_TEMPLATE_PKC primary key (MAIL_TEMPLATE_CODE, LANG)
);