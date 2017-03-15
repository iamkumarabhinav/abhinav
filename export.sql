--------------------------------------------------------
--  File created - Wednesday-March-15-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table QUESTION380
--------------------------------------------------------

  CREATE TABLE "QUESTION380" ("QNO" NUMBER, "QUESTION" VARCHAR2(255), "OPT1" VARCHAR2(255), "OPT2" VARCHAR2(255), "OPT3" VARCHAR2(255), "OPT4" VARCHAR2(255), "ANSWER" NUMBER, "MARKS" NUMBER, "CID" NUMBER)
--------------------------------------------------------
--  DDL for Table ENROLL180
--------------------------------------------------------

  CREATE TABLE "ENROLL180" ("ROLL" NUMBER, "CID" NUMBER, "MARKS" NUMBER, "JOINDATE" DATE)
--------------------------------------------------------
--  DDL for Table STUDENT180
--------------------------------------------------------

  CREATE TABLE "STUDENT180" ("ROLL" NUMBER, "EMAIL" VARCHAR2(255), "MOBILE" VARCHAR2(255))
--------------------------------------------------------
--  DDL for Table INSTRUCTOR180
--------------------------------------------------------

  CREATE TABLE "INSTRUCTOR180" ("INSTUCTORID" NUMBER, "SALARY" NUMBER, "CID" NUMBER)
--------------------------------------------------------
--  DDL for Table COURSE180
--------------------------------------------------------

  CREATE TABLE "COURSE180" ("CID" NUMBER, "CNAME" VARCHAR2(255), "CDURATION" NUMBER)
--------------------------------------------------------
--  DDL for Table USER180
--------------------------------------------------------

  CREATE TABLE "USER180" ("USERID" NUMBER, "USERNAME" VARCHAR2(255), "PWD" VARCHAR2(255), "USERROLE" VARCHAR2(255))
REM INSERTING into QUESTION380
SET DEFINE OFF;
Insert into QUESTION380 (QNO,QUESTION,OPT1,OPT2,OPT3,OPT4,ANSWER,MARKS,CID) values (1,'What is the default value of Boolean variable','true','false','null','not defined',1,4,601);
Insert into QUESTION380 (QNO,QUESTION,OPT1,OPT2,OPT3,OPT4,ANSWER,MARKS,CID) values (2,'What is the default value of Object variable?','undefined','0','null','not defined',3,4,601);
Insert into QUESTION380 (QNO,QUESTION,OPT1,OPT2,OPT3,OPT4,ANSWER,MARKS,CID) values (3,' What is the default value of float variable?','0.0d','0.0f','0','not defined',2,4,601);
Insert into QUESTION380 (QNO,QUESTION,OPT1,OPT2,OPT3,OPT4,ANSWER,MARKS,CID) values (4,'Which of the following is a thread safe?','StringBuilder','StringBuffer','both','none',2,4,601);
REM INSERTING into ENROLL180
SET DEFINE OFF;
Insert into ENROLL180 (ROLL,CID,MARKS,JOINDATE) values (201,601,100,to_date('22-JAN-12','DD-MON-RR'));
Insert into ENROLL180 (ROLL,CID,MARKS,JOINDATE) values (202,602,100,to_date('22-JAN-13','DD-MON-RR'));
Insert into ENROLL180 (ROLL,CID,MARKS,JOINDATE) values (203,604,100,to_date('22-JAN-14','DD-MON-RR'));
REM INSERTING into STUDENT180
SET DEFINE OFF;
Insert into STUDENT180 (ROLL,EMAIL,MOBILE) values (201,'abk@gmail.com','7749996144');
Insert into STUDENT180 (ROLL,EMAIL,MOBILE) values (202,'maya@gmail.com','7749996145');
Insert into STUDENT180 (ROLL,EMAIL,MOBILE) values (203,'ankit@gmail.com','7749996146');
REM INSERTING into INSTRUCTOR180
SET DEFINE OFF;
Insert into INSTRUCTOR180 (INSTUCTORID,SALARY,CID) values (301,4000,601);
Insert into INSTRUCTOR180 (INSTUCTORID,SALARY,CID) values (302,5000,602);
Insert into INSTRUCTOR180 (INSTUCTORID,SALARY,CID) values (303,6000,604);
REM INSERTING into COURSE180
SET DEFINE OFF;
Insert into COURSE180 (CID,CNAME,CDURATION) values (601,'java',12);
Insert into COURSE180 (CID,CNAME,CDURATION) values (602,'mainframe',13);
Insert into COURSE180 (CID,CNAME,CDURATION) values (63,'dotnet',11);
Insert into COURSE180 (CID,CNAME,CDURATION) values (604,'sql',10);
REM INSERTING into USER180
SET DEFINE OFF;
Insert into USER180 (USERID,USERNAME,PWD,USERROLE) values (201,'abhinav','abhink','student');
Insert into USER180 (USERID,USERNAME,PWD,USERROLE) values (202,'mayank','maya','student');
Insert into USER180 (USERID,USERNAME,PWD,USERROLE) values (203,'ankit','anki','student');
Insert into USER180 (USERID,USERNAME,PWD,USERROLE) values (301,'arnav','arnav','teacher');
Insert into USER180 (USERID,USERNAME,PWD,USERROLE) values (302,'abhishek','abhi','teacher');
Insert into USER180 (USERID,USERNAME,PWD,USERROLE) values (303,'panda','panda','teacher');
--------------------------------------------------------
--  DDL for Index PK_Q
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_Q" ON "QUESTION380" ("QNO", "CID")
--------------------------------------------------------
--  DDL for Index PK_ENRO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ENRO" ON "ENROLL180" ("ROLL", "CID")
--------------------------------------------------------
--  DDL for Index SYS_C00149856
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00149856" ON "STUDENT180" ("ROLL")
--------------------------------------------------------
--  DDL for Index SYS_C00149858
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00149858" ON "INSTRUCTOR180" ("INSTUCTORID")
--------------------------------------------------------
--  DDL for Index SYS_C00149855
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00149855" ON "COURSE180" ("CID")
--------------------------------------------------------
--  DDL for Index SYS_C00149854
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00149854" ON "USER180" ("USERID")
--------------------------------------------------------
--  Constraints for Table QUESTION380
--------------------------------------------------------

  ALTER TABLE "QUESTION380" ADD CONSTRAINT "PK_Q" PRIMARY KEY ("QNO", "CID") ENABLE
--------------------------------------------------------
--  Constraints for Table ENROLL180
--------------------------------------------------------

  ALTER TABLE "ENROLL180" ADD CONSTRAINT "PK_ENRO" PRIMARY KEY ("ROLL", "CID") ENABLE
--------------------------------------------------------
--  Constraints for Table STUDENT180
--------------------------------------------------------

  ALTER TABLE "STUDENT180" ADD PRIMARY KEY ("ROLL") ENABLE
--------------------------------------------------------
--  Constraints for Table INSTRUCTOR180
--------------------------------------------------------

  ALTER TABLE "INSTRUCTOR180" ADD PRIMARY KEY ("INSTUCTORID") ENABLE
--------------------------------------------------------
--  Constraints for Table COURSE180
--------------------------------------------------------

  ALTER TABLE "COURSE180" ADD PRIMARY KEY ("CID") ENABLE
--------------------------------------------------------
--  Constraints for Table USER180
--------------------------------------------------------

  ALTER TABLE "USER180" ADD PRIMARY KEY ("USERID") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table QUESTION380
--------------------------------------------------------

  ALTER TABLE "QUESTION380" ADD FOREIGN KEY ("CID") REFERENCES "COURSE180" ("CID") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table ENROLL180
--------------------------------------------------------

  ALTER TABLE "ENROLL180" ADD FOREIGN KEY ("ROLL") REFERENCES "STUDENT180" ("ROLL") ENABLE
  ALTER TABLE "ENROLL180" ADD FOREIGN KEY ("CID") REFERENCES "COURSE180" ("CID") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table STUDENT180
--------------------------------------------------------

  ALTER TABLE "STUDENT180" ADD FOREIGN KEY ("ROLL") REFERENCES "USER180" ("USERID") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table INSTRUCTOR180
--------------------------------------------------------

  ALTER TABLE "INSTRUCTOR180" ADD FOREIGN KEY ("INSTUCTORID") REFERENCES "USER180" ("USERID") ENABLE
  ALTER TABLE "INSTRUCTOR180" ADD FOREIGN KEY ("CID") REFERENCES "COURSE180" ("CID") ENABLE
