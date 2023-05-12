-- ------------------------------------------------
-- To check foreign keys
-- ------------------------------------------------

SELECT RefCons.constraint_schema, RefCons.table_name, RefCons.referenced_table_name, RefCons.constraint_name, KeyCol.column_name
FROM information_schema.referential_constraints RefCons
JOIN information_schema.key_column_usage KeyCol ON RefCons.constraint_schema = KeyCol.table_schema
     AND RefCons.table_name = KeyCol.table_name
     AND RefCons.constraint_name = KeyCol.constraint_name
WHERE RefCons.constraint_schema = 'LittleLemonDB';
