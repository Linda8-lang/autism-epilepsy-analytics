USE database genetic_variant_data;
USE schema genetic_variant_data.public;
SELECT
SUM(total_count) AS "TOTAL FREQUENCY"
FROM gene_phenotype
-- select * from gene_phenotype limit 5
-- select * from variant limit 5
SELECT 
COUNT(
CDOT,
PDOT,
VARIANT_CLASSIFICATION,
INHERITANCE_PATTERN,
ZYGOSITY
)
FROM 
variant