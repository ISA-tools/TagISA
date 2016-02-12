LOAD DATA
INFILE has_tag.csv
REPLACE
INTO TABLE has_tag
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(Protocol_PType, Protocol_Study_ID, Tag_Label) 
