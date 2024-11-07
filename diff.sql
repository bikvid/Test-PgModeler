-- Diff code generated with pgModeler (PostgreSQL Database Modeler)
-- pgModeler version: 1.1.4
-- Diff date: 2024-11-05 12:27:19
-- Source model: EMD_ESG
-- Database: EMD_ESG
-- PostgreSQL version: 15.0

-- [ Diff summary ]
-- Dropped objects: 0
-- Created objects: 1
-- Changed objects: 0

SET search_path=public,pg_catalog,"3NF_Mod_GZT";
-- ddl-end --


-- [ Created objects ] --
-- object: buffer_column | type: COLUMN --
-- ALTER TABLE "3NF_Mod_GZT"."Object_" DROP COLUMN IF EXISTS buffer_column CASCADE;
ALTER TABLE "3NF_Mod_GZT"."Object_" ADD COLUMN buffer_column1 smallint;
-- ddl-end --


