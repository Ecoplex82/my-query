USE stores

-- NO 1 Using the marketing data, what's the total number of customers that have housing, loan and are single?


SELECT * FROM [Marketing Data  - Copy]

SELECT marital,loan,housing, count(*) AS total_num FROM [Marketing Data  - Copy]
WHERE
marital='single' AND
loan =1 AND HOUSING=1
GROUP BY marital,loan,housing

 --OR  this only gives the total number without the sum

 SELECT count(*) AS total_num FROM [Marketing Data  - Copy]
 WHERE marital='single'AND housing=1 AND loan=1 

-- NO2 Using the marketing data, write a query to show the count of each job, arrange the total count in Descending order. 

SELECT job, count(*) as total_job_count FROM [Marketing Data  - Copy]
group by job
ORDER by total_job_count DESC


-- NO 3 Using the sample superstore data, write a query to show the subcategory and the total sales of each subcategory. Your query should display only the subcategory and the total sales columns to see which product sells the most.

 SELECT * FROM Sample_Superstore_Complete

SELECT Sub_Category, SUM(sales) AS total_sales FROM Sample_Superstore_Complete
GROUP BY Sub_category
ORDER BY total_sales DESC;
