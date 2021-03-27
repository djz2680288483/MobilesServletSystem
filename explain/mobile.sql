/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/2/27 8:48:30                            */
/*==============================================================*/


DROP TABLE IF EXISTS TACCOUNT;

DROP TABLE IF EXISTS TCHARGE;

DROP TABLE IF EXISTS TCHARGE_RULE;

DROP TABLE IF EXISTS TCUSTOMER;

DROP TABLE IF EXISTS TMOBILES;

DROP TABLE IF EXISTS TOPERATOR;

DROP TABLE IF EXISTS TUSER;

/*==============================================================*/
/* Table: TACCOUNT                                              */
/*==============================================================*/
CREATE TABLE TACCOUNT
(
   ACCOUNT_ID           NUMERIC(8,0) NOT NULL,
   CONTACT_PERSON       VARCHAR(20) NOT NULL,
   CONTACT_ADDRESS      VARCHAR(20) NOT NULL,
   ACCOUNT_BALANCE      NUMERIC(10,2) NOT NULL,
   PRIMARY KEY (ACCOUNT_ID)
);

/*==============================================================*/
/* Table: TCHARGE                                               */
/*==============================================================*/
CREATE TABLE TCHARGE
(
   CHARGE_CODE          VARCHAR(2) NOT NULL,
   CHARGE_NAME          VARCHAR(10) NOT NULL,
   CHARGE               NUMERIC(6,2) NOT NULL,
   PRIMARY KEY (CHARGE_CODE)
);

/*==============================================================*/
/* Table: TCHARGE_RULE                                          */
/*==============================================================*/
CREATE TABLE TCHARGE_RULE
(
   FUNC_ID              VARCHAR(2) NOT NULL,
   CHARGE_CODE          VARCHAR(2),
   FUNC_NAME            VARCHAR(10) NOT NULL,
   PRIMARY KEY (FUNC_ID)
);

/*==============================================================*/
/* Table: TCUSTOMER                                             */
/*==============================================================*/
CREATE TABLE TCUSTOMER
(
   CUSTOMER_ID          NUMERIC(8,0) NOT NULL,
   ID_TYPE              VARCHAR(2) NOT NULL,
   ID_NUMBER            VARCHAR(20) NOT NULL,
   CUSTOMER_NAME        VARCHAR(20) NOT NULL,
   CUSTOMER_BIRTHDAY    DATE NOT NULL,
   CUSTOMER_SEX         VARCHAR(2) NOT NULL,
   CUSTOMER_ADDRESS     VARCHAR(50) NOT NULL,
   PRIMARY KEY (CUSTOMER_ID)
);

/*==============================================================*/
/* Table: TMOBILES                                              */
/*==============================================================*/
CREATE TABLE TMOBILES
(
   MOBILE_NUMBER        VARCHAR(11) NOT NULL,
   MOBILE_TYPE          VARCHAR(6) NOT NULL,
   CARD_NUMBER          VARCHAR(11) NOT NULL,
   "IS)_AVAILABLE"      VARCHAR(2) NOT NULL,
   PRIMARY KEY (MOBILE_NUMBER)
);

/*==============================================================*/
/* Table: TOPERATOR                                             */
/*==============================================================*/
CREATE TABLE TOPERATOR
(
   OPERATOR_ID          VARCHAR(32) NOT NULL,
   OPERATOR_NAME        VARCHAR(20) NOT NULL,
   OPERATOR_PWD         VARCHAR(20) NOT NULL,
   IS_ADMIN             VARCHAR(2) NOT NULL,
   PRIMARY KEY (OPERATOR_ID)
);

/*==============================================================*/
/* Table: TUSER                                                 */
/*==============================================================*/
CREATE TABLE TUSER
(
   USER_ID              NUMERIC(8,0) NOT NULL,
   CUSTOMER_ID          NUMERIC(8,0),
   ACCOUNT_ID           NUMERIC(8,0),
   MOBILE_NUMBER        VARCHAR(11),
   ROAMING_STATUS       VARCHAR(2) NOT NULL,
   COM_LEVEL            VARCHAR(2) NOT NULL,
   PRIMARY KEY (USER_ID)
);

ALTER TABLE TCHARGE_RULE ADD CONSTRAINT FK_RELATIONSHIP_4 FOREIGN KEY (CHARGE_CODE)
      REFERENCES TCHARGE (CHARGE_CODE) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE TUSER ADD CONSTRAINT FK_RELATIONSHIP_1 FOREIGN KEY (CUSTOMER_ID)
      REFERENCES TCUSTOMER (CUSTOMER_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE TUSER ADD CONSTRAINT FK_RELATIONSHIP_2 FOREIGN KEY (ACCOUNT_ID)
      REFERENCES TACCOUNT (ACCOUNT_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE TUSER ADD CONSTRAINT FK_RELATIONSHIP_3 FOREIGN KEY (MOBILE_NUMBER)
      REFERENCES TMOBILES (MOBILE_NUMBER) ON DELETE RESTRICT ON UPDATE RESTRICT;

