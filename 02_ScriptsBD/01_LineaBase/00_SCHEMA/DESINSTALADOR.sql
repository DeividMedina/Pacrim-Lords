REM ******************************************************************
REM Fecha         : 26/03/2018
REM Realizado por : TheOverLordKotan
REM Base de Datos : FS_PCRM_US
REM ******************************************************************

REM TABLESPACE Y SEGMENTOS DE ROLLBACK
set feedback off
spool TMP.lst
select distinct 'pause DEBE estar conectado con Usuario SYSTEM' || chr(10) || 'ROLL' || chr(10) || 'EXIT'
from dual
where user <> 'SYSTEM'
/
spool off
start TMP.lst
set feedback on

REM USUARIO  DUENHO DEL APLICATIVO FS_PCRM_US
drop user FS_PCRM_US cascade;




	DROP TABLE   "FS_PCRM_US"."EM_TEMNE" CASCADE CONSTRAINTS;



	DROP TABLE   "FS_PCRM_US"."EM_TEMTE" CASCADE CONSTRAINTS;



	DROP TABLE   "FS_PCRM_US"."EM_TTPEM" CASCADE CONSTRAINTS;



	DROP TABLE   "FS_PCRM_US"."NE_TCLNE" CASCADE CONSTRAINTS;



	DROP TABLE   "FS_PCRM_US"."NE_TEMUS" CASCADE CONSTRAINTS;



	DROP TABLE   "FS_PCRM_US"."NE_TINEM" CASCADE CONSTRAINTS;



	DROP TABLE   "FS_PCRM_US"."NE_TPRNE" CASCADE CONSTRAINTS;



	DROP TABLE   "FS_PCRM_US"."NE_TPVNE" CASCADE CONSTRAINTS;



	DROP TABLE   "FS_PCRM_US"."NE_TPVUS" CASCADE CONSTRAINTS;



	DROP TABLE   "FS_PCRM_US"."NE_TTPCL" CASCADE CONSTRAINTS;



	DROP TABLE   "FS_PCRM_US"."NE_TTPNE" CASCADE CONSTRAINTS;



	DROP TABLE   "FS_PCRM_US"."NE_TTPPR" CASCADE CONSTRAINTS;



	DROP TABLE   "FS_PCRM_US"."NE_TTPPV" CASCADE CONSTRAINTS;



	DROP TABLE   "FS_PCRM_US"."NE_TTRPR" CASCADE CONSTRAINTS;



	DROP TABLE   "FS_PCRM_US"."NE_TTSTC" CASCADE CONSTRAINTS;



	DROP TABLE   "FS_PCRM_US"."US_TTPRL" CASCADE CONSTRAINTS;



	DROP TABLE   "FS_PCRM_US"."US_TUSNE" CASCADE CONSTRAINTS;



	DROP TABLE   "FS_PCRM_US"."US_TUSRL" CASCADE CONSTRAINTS;


REM TABLESPACE DE DATOS
DROP TABLESPACE TS_TPACRIM   INCLUDING CONTENTS AND DATAFILES
    CASCADE CONSTRAINTS;
/

REM TABLESPACE DE INDICES 
DROP TABLESPACE TS_PACRIM INCLUDING CONTENTS AND DATAFILES
    CASCADE CONSTRAINTS;
/

REM TABLESPACE TEMPORAL
DROP tablespace TS_IPACRIM INCLUDING CONTENTS AND DATAFILES
    CASCADE CONSTRAINTS;
/






