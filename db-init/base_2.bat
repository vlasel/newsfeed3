echo start sqlPlus
sqlplus newsfeed2/newsfeed2@'(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1521)))(CONNECT_DATA=(SID=xe)))' @2_init.sql >>log__base_2.txt
echo exit 
exit;
