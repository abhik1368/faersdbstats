--######################################################
--# Create legacy indication staging tables DDL and
--# Load legacy FAERS data files into the indi_legacy table
--#
--# LTS Computing LLC
--######################################################

set search_path = faers;

drop table indi_legacy;
create table indi_legacy
(
ISR varchar,
DRUG_SEQ varchar,
INDI_PT varchar,
FILENAME varchar
);
truncate indi_legacy;

COPY indi_legacy FROM '/home/lee/data/inbound/faers/legacy/ascii/all_indi_legacy_data_with_filename.txt' WITH DELIMITER E'$' CSV HEADER QUOTE E'\b' ;
select distinct filename from indi_legacy order by 1 

