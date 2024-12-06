drop table if exists MAIL_RECIPIENT;
create table MAIL_RECIPIENT (
  MAIL_SEND_REQUEST_CODE CHAR(18) not null
  , SEQUENCE INTEGER not null
  , RECIPIENT_TYPE CHAR(1) not null
  , MAILADDRESS VARCHAR(255) not null
  , constraint MAIL_RECIPIENT_PKC primary key (MAIL_SEND_REQUEST_CODE, SEQUENCE)
);