-- GET SUM (FANS) FOR EACH ORIGIN
SELECT origin, sum(fans) as nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
