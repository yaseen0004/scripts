#/usr/bin/sh

db=$1

psql $db -c "update fetchmail_server set active='f';"
psql $db -c "delete from ir_mail_server;"
psql $db -c "update ir_cron set active='f';"
psql $db -c "update ir_config_parameter set value='2090-02-02 18:25:18' where key='database.expiration_date';"
psql $db -c "update res_users set login='muya',password='muya' where id=2;"