REM ******************************************************************
REM Fecha         : 26/03/2018
REM Realizado por : TheOverLordKotan
REM Base de Datos : FS_PCRM_US
REM ******************************************************************

CREATE INDEX "IXFK_NE_TPVUS_NE_TEMUS"   
 ON  "FS_PCRM_US"."NE_TPVUS" ("EMUS_EMUS") 
TABLESPACE	TS_IPACRIM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );

CREATE INDEX "IXFK_NE_TPVUS_NE_TTPPV"   
 ON  "FS_PCRM_US"."NE_TPVUS" ("TPPV_TPPV") 
TABLESPACE	TS_IPACRIM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );


  

  
