drop table if exists MAIL_ATTACHMENT_FILE;
create table MAIL_ATTACHMENT_FILE (
  MAIL_SEND_REQUEST_CODE CHAR(18) not null
  , SEQUENCE INTEGER not null
  , FILE_NAME VARCHAR(255) not null
  , ATTACHMENT_FILE OID
  , constraint MAIL_ATTACHMENT_FILE_PKC primary key (MAIL_SEND_REQUEST_CODE, SEQUENCE)
);