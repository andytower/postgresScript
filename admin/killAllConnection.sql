/*
This script drop any connection no database

*/
select pg_terminate_backend(s.pid) from pg_stat_activity s where s.datname='database name'
