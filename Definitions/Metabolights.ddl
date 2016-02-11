-- Generiert von Oracle SQL Developer Data Modeler 4.1.3.901
--   am/um:        2016-02-11 22:44:42 MEZ
--   Site:      Oracle Database 11g
--   Typ:      Oracle Database 11g




CREATE TABLE "ISA-Tab"
  ( Accession VARCHAR2 (10 CHAR) NOT NULL
  ) ;
ALTER TABLE "ISA-Tab" ADD CONSTRAINT "ISA-Tab_PK" PRIMARY KEY ( Accession ) ;


CREATE TABLE Keyword
  (
    Label VARCHAR2 (100 CHAR) NOT NULL ,
    Text LONG ,
    "ISA-Tab_Accession" VARCHAR2 (10 CHAR) NOT NULL
  ) ;
ALTER TABLE Keyword ADD CONSTRAINT Keyword_PK PRIMARY KEY ( Label, "ISA-Tab_Accession" ) ;


CREATE TABLE Protocol
  (
    PType VARCHAR2 (100 CHAR) NOT NULL ,
    Description CLOB ,
    Study_ID VARCHAR2 (10 CHAR) NOT NULL
  ) ;
ALTER TABLE Protocol ADD CONSTRAINT Protocol_PK PRIMARY KEY ( PType, Study_ID ) ;


CREATE TABLE Study
  (
    ID                  VARCHAR2 (10 CHAR) NOT NULL ,
    "ISA-Tab_Accession" VARCHAR2 (10 CHAR) NOT NULL
  ) ;
ALTER TABLE Study ADD CONSTRAINT Study_PK PRIMARY KEY ( ID ) ;


CREATE TABLE Tag
  ( Label VARCHAR2 (100 CHAR) NOT NULL , Text LONG NOT NULL
  ) ;
ALTER TABLE Tag ADD CONSTRAINT Tag_PK PRIMARY KEY ( Label ) ;


CREATE TABLE has_keyword
  (
    Protocol_PType              VARCHAR2 (100 CHAR) NOT NULL ,
    Protocol_Study_ID           VARCHAR2 (10 CHAR) NOT NULL ,
    Keyword_Label               VARCHAR2 (100 CHAR) NOT NULL ,
    "Keyword_ISA-Tab_Accession" VARCHAR2 (10 CHAR) NOT NULL
  ) ;
ALTER TABLE has_keyword ADD CONSTRAINT has_keyword_PK PRIMARY KEY ( Protocol_PType, Protocol_Study_ID, Keyword_Label, "Keyword_ISA-Tab_Accession" ) ;


CREATE TABLE has_tag
  (
    Protocol_PType    VARCHAR2 (100 CHAR) NOT NULL ,
    Protocol_Study_ID VARCHAR2 (10 CHAR) NOT NULL ,
    Tag_Label         VARCHAR2 (100 CHAR) NOT NULL
  ) ;
ALTER TABLE has_tag ADD CONSTRAINT has_tag_PK PRIMARY KEY ( Protocol_PType, Protocol_Study_ID, Tag_Label ) ;


ALTER TABLE has_keyword ADD CONSTRAINT FK_ASS_23 FOREIGN KEY ( Protocol_PType, Protocol_Study_ID ) REFERENCES Protocol ( PType, Study_ID ) ;

ALTER TABLE has_keyword ADD CONSTRAINT FK_ASS_24 FOREIGN KEY ( Keyword_Label, "Keyword_ISA-Tab_Accession" ) REFERENCES Keyword ( Label, "ISA-Tab_Accession" ) ;

ALTER TABLE has_tag ADD CONSTRAINT FK_ASS_27 FOREIGN KEY ( Protocol_PType, Protocol_Study_ID ) REFERENCES Protocol ( PType, Study_ID ) ;

ALTER TABLE has_tag ADD CONSTRAINT FK_ASS_28 FOREIGN KEY ( Tag_Label ) REFERENCES Tag ( Label ) ;

ALTER TABLE Keyword ADD CONSTRAINT "Keyword_ISA-Tab_FK" FOREIGN KEY ( "ISA-Tab_Accession" ) REFERENCES "ISA-Tab" ( Accession ) ;

ALTER TABLE Protocol ADD CONSTRAINT Protocol_Study_FK FOREIGN KEY ( Study_ID ) REFERENCES Study ( ID ) ;

ALTER TABLE Study ADD CONSTRAINT "Study_ISA-Tab_FK" FOREIGN KEY ( "ISA-Tab_Accession" ) REFERENCES "ISA-Tab" ( Accession ) ;


-- Zusammenfassungsbericht für Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- ALTER TABLE                             14
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
