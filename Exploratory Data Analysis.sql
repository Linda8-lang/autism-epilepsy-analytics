 --- Set the environment
Use database genetic_variant_data; ---Sets the database
Use schema genetic_variant_data.public; ---Sets the schema
SELECT
*
FROM
genetic_variant_data.public.gene_phenotype
limit 10;
SELECT
*
FROM
genetic_variant_data.public.variant
limit 10;
----Count of all the records in the variant table
SELECT
COUNT(*)
FROM
genetic_variant_data.public.variant
-- Count of all the records in the gene-phenotype table
SELECT
COUNT(*)
FROM
gene_phenotype
-- Check for null values in the gene column in the gene_phenotype table
SELECT
COUNT(*)
FROM
gene_phenotype
WHERE gene IS NULL
-- Check for null values in the gene column in the variant table
SELECT
COUNT(*)
FROM
variant
WHERE gene IS NULL
-- Count of the distinct
SELECT
gene,
COUNT(DISTINCT gene) AS "TOTAL KIDS WITH GENE"
FROM 
gene_phenotype
GROUP BY
GENE

---Fetch the TOP 10 Most popular genes with the DNA variant,order them by descending order
SELECT
TOP 10 GENE,
COUNT(*) AS "TOTAL_COUNT"
FROM 
variant
Group by 
GENE
ORDER BY
COUNT(*) DESC
---Get the top 5 symptom description (seizure, delayed speech) with the corresponding genes that frequently contribute to epilepsy or autism


WITH sd AS 
(SELECT
hpo_name,
COUNT(*) AS "TOTAL_COUNT"
FROM 
GENE_PHENOTYPE
GROUP BY
hpo_name)
SELECT hpo_name, TOTAL_COUNT 
FROM
sd
ORDER BY
TOTAL_COUNT DESC
LIMIT 5