#/usr/bin/sh

db=$1

psql $db -c "UPDATE res_lang SET active ='t' WHERE code = 'en_US';"
psql $db -c "UPDATE res_partner SET lang = 'en_US' WHERE id = 3;"
