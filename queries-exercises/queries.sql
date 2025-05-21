/*Select de cobranças (payment) com valor maior que R$ 1.000,00*/
SELECT 
	* 
FROM 
	payment
WHERE 
	value > 1000;

/* Soma dos valores de cobranças recebidas com a data de criação maior que 2020, 
agrupadas por tipo de cobrança (billing_type) */
SELECT 
	p.billing_type,
	SUM(p.value) as TOTAL_REVENUE_AFTER_2020
FROM 
	payment p
WHERE
	YEAR(p.date_created) > 2020
GROUP BY 
	billing_type;

/*Lista de 20 pagadores (customer_account) com valores recebidos maiores que R$ 1.000,00 */
SELECT
	DISTINCT ca.name
FROM
	customer_account ca
INNER JOIN 
	payment p ON ca.id = p.customer_account_id
WHERE
	p.value > 1000
LIMIT 
	20;

/*Primeiro nome dos clientes (customer) com análise geral aprovada 
(customer_regiter_status), ordenado por data de aprovação */
SELECT
	SUBSTRING_INDEX(name, ' ', 1),
	crs.last_updated,
	crs.general_approval

FROM
	customer c
INNER JOIN
	customer_register_status crs ON c.id = crs.customer_id
WHERE
	crs.general_approval = "APPROVED"
ORDER BY 
	crs.last_updated












