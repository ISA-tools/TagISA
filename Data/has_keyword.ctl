LOAD DATA
INFILE has_keyword.csv
REPLACE
INTO TABLE has_keyword
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(Protocol_PType, Protocol_Study_ID, Keyword_Label, "Keyword_ISA-Tab_Accession") 
