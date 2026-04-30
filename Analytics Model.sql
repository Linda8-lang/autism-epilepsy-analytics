--  Designing the transformation model/ analytics model
-- Separating facts and dimension tables
DROP DATABASE IF EXISTS GENETIC_VARIANT_DB;
CREATE database genetic_variant_db;
CREATE schema genetic_variant_db.analytics;
USE DATABASE genetic_variant_db;
USE SCHEMA genetic_variant_db.analytics;
-- Create the Fact and Dimension tables
Create or replace table Dim_Gene(
ID INT autoincrement
)
Alter Table GENETIC_VARIANT_DB.ANALYTICS.DIM_GENE add column Gene varchar(255)
Create or Replace table Dim_Phenotype(
ID INT autoincrement,
HPO_id varchar(255),
HPO_Name varchar(255)
) 
Create or replace table DIM_Variant(
ID INT autoincrement,
Cdot varchar(255),
Pdot varchar(255),
Variant_Classification varchar(255),
Inheritance_Pattern varchar(255),
Zygosity varchar(255)
)
Create or replace table fact_gene_phenotype (
ID INT autoincrement,
gene_id number,
phenotype_id number,
total_count number(10,0)
)
Create or replace table fact_variant (
ID INT autoincrement,
gene_id number,
variant_id number,
variant_occurence_count number(10,0)
)