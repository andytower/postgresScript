/* This script show schema from database on what not grant usage to role*/
select
	s.schema_name,
	pg_catalog.has_schema_privilege( 'user/rolename',
	s.schema_name,
	'USAGE' )
from
	information_schema.schemata s
where
	s.catalog_name = 'npom'
	and s.catalog_name = 'npom'
	and s.schema_name !~ '^pg_'
	and s.schema_name != 'information_schema'
	and not pg_catalog.has_schema_privilege( 'user/rolename',
	s.schema_name,
	'USAGE' );
