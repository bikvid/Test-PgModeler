-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler version: 1.1.4
-- PostgreSQL version: 16.0
-- Project Site: pgmodeler.io
-- Model Author: ---

-- Database creation must be performed outside a multi lined SQL file. 
-- These commands were put in this file only as a convenience.
-- 
-- object: "EMD_ESG" | type: DATABASE --
-- DROP DATABASE IF EXISTS "EMD_ESG";
CREATE DATABASE "EMD_ESG"
	ENCODING = 'UTF8'
	LC_COLLATE = 'Russian_Russia.1251'
	LC_CTYPE = 'Russian_Russia.1251'
	TABLESPACE = pg_default
	OWNER = postgres;
-- ddl-end --


-- object: "3NF_Mod_GZT" | type: SCHEMA --
-- DROP SCHEMA IF EXISTS "3NF_Mod_GZT" CASCADE;
CREATE SCHEMA "3NF_Mod_GZT";
-- ddl-end --
ALTER SCHEMA "3NF_Mod_GZT" OWNER TO postgres;
-- ddl-end --

SET search_path TO pg_catalog,public,"3NF_Mod_GZT";
-- ddl-end --

-- object: "3NF_Mod_GZT".organization | type: TABLE --
-- DROP TABLE IF EXISTS "3NF_Mod_GZT".organization CASCADE;
CREATE TABLE "3NF_Mod_GZT".organization (
	organization_code character varying(32),
	name1 character varying(50),
	organization_desc character varying(250),
	organization_pkey character varying(32) NOT NULL,
	CONSTRAINT organization_pk PRIMARY KEY (organization_pkey)
);
-- ddl-end --
ALTER TABLE "3NF_Mod_GZT".organization OWNER TO postgres;
-- ddl-end --

-- object: "3NF_Mod_GZT"."Object_" | type: TABLE --
-- DROP TABLE IF EXISTS "3NF_Mod_GZT"."Object_" CASCADE;
CREATE TABLE "3NF_Mod_GZT"."Object_" (
	object_code character varying(32),
	object_name character varying(50),
	object_desc character varying(250),
	latitude character varying(15),
	longitude character varying(15),
	object_pkey character varying(32) NOT NULL,
	organization_pkey_organization character varying(32),
	CONSTRAINT object_pkey PRIMARY KEY (object_pkey)
);
-- ddl-end --
ALTER TABLE "3NF_Mod_GZT"."Object_" OWNER TO postgres;
-- ddl-end --

-- object: organization_fk | type: CONSTRAINT --
-- ALTER TABLE "3NF_Mod_GZT"."Object_" DROP CONSTRAINT IF EXISTS organization_fk CASCADE;
ALTER TABLE "3NF_Mod_GZT"."Object_" ADD CONSTRAINT organization_fk FOREIGN KEY (organization_pkey_organization)
REFERENCES "3NF_Mod_GZT".organization (organization_pkey) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --


