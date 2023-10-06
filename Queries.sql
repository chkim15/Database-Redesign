# Order List
SELECT 
  orders.order_id AS order_no, 
  customers.name AS customer_name,
  items.name AS item_name,
  orders.quantity AS quantity,
  orders.price AS price,
  orders.quantity * orders.price AS amount,
  exports.date AS shipped_date
FROM orders 
JOIN customers 
  USING (customer_id)
JOIN items 
  USING (item_id)
JOIN exports
  USING (export_id)
ORDER BY order_no ASC;

# Balance amount by order
SELECT 
  orders.order_id AS order_no,
  orders.quantity * orders.price AS invoice_amount,
  SUM(payment.remittance) AS received_amount,
  SUM(payment.remittance) - orders.quantity * orders.price AS balance
FROM orders
JOIN payment
  USING (order_id)
GROUP BY order_no
ORDER BY order_no ASC;

# Balance amount for each customer
CREATE TEMPORARY TABLE tbl2 (
	SELECT 
	  orders.order_id AS order_no,
	  orders.quantity* orders.price AS invoice_amount,
	  SUM(payment.remittance) AS received_amount,
	  SUM(payment.remittance) - orders.quantity * orders.price AS balance
	FROM orders
	JOIN payment
	  USING (order_id)
	GROUP BY order_no
	ORDER BY order_no ASC);

SELECT 
  customers.name AS customer_name,
  SUM(tbl2.balance) AS balance
FROM tbl2
JOIN orders
  ON tbl2.order_no = orders.order_id
JOIN customers
  ON orders.customer_id = customers.customer_id
GROUP BY customers.name;


# Monthly Sales
SELECT 
  YEAR(exports.date) as year,
  MONTH(exports.date) as month,
  SUM(orders.quantity * orders.price) AS amount
FROM orders
JOIN exports
  USING (export_id)
WHERE exports.date IS NOT NULL
GROUP BY month, year
ORDER BY year, month ASC;

# Yearly Sales
SELECT 
  YEAR(exports.date) as year,
  SUM(orders.quantity * orders.price) AS amount
FROM orders
JOIN exports
  USING (export_id)
WHERE exports.date IS NOT NULL
GROUP BY year
ORDER BY year ASC;

# Sales, Cost, and Profit Analysis
SELECT
  order_id AS order_no,
  (orders.quantity * orders.price) AS amount,
  SUM(exports.ocean_freight / exchanges.rate + exports.domestice_freight) AS export_cost,
  SUM(imports.ocean_freight / exchanges.rate + imports.domestice_freight) AS import_cost,
  SUM(production.quantity * production.price / exchanges.rate) AS production_cost,
  SUM(orders.quantity * orders.price) - SUM(exports.ocean_freight / exchanges.rate + exports.domestice_freight) - SUM(imports.ocean_freight / exchanges.rate + imports.domestice_freight) - 
  SUM(production.quantity * production.price / exchanges.rate) AS profit
FROM orders
JOIN exports
  USING (export_id)
JOIN imports
  USING (import_id)
JOIN production
  USING (order_id)
JOIN exchanges
  ON exports.date = exchanges.date
GROUP BY orders.order_id
ORDER BY orders.order_id;


# Find the width, weight, hs_code for an item       

DELIMITER $$

CREATE PROCEDURE findSpec (
  IN itemName VARCHAR(50),
  OUT oWidth INT,
  OUT oWeight INT,
  OUT oHs_code INT)

	BEGIN
	  SELECT 
		width, weight, hs_code INTO oWidth, oWeight, oHs_code
	  FROM items
	  WHERE name = itemName;

	END $$

DELIMITER ;

CALL findSpec("Adela2", @oWidth, @oWeight, @oHs_code);
SELECT @oWidth, @oWeight, @oHs_code;


# Find the most recent selling price for an item
drop function findPrice;

DELIMITER $$

CREATE FUNCTION findPrice(itemName VARCHAR(50))
RETURNS DECIMAL(6,2) DETERMINISTIC

BEGIN
  DECLARE oPrice DECIMAL(6,2);
  
  IF itemName IS NOT NULL AND itemName != ''
  THEN
		SELECT
			  orders.price INTO oPrice
			FROM orders
			JOIN exports
			  USING (export_id)
			RIGHT JOIN
				(SELECT
				  items.item_id,
				  items.name AS item_name,
				  MAX(exports.date) AS date
				FROM orders
				JOIN items 
				  USING (item_id)
				JOIN exports
				  USING (export_id)
				GROUP BY items.item_id) AS max_date_by_item
			ON orders.item_id = max_date_by_item.item_id
			  AND exports.date = max_date_by_item.date
			WHERE item_name = itemName;
  ELSE SET oPrice = -1;
  END IF;
  
  RETURN oPrice;
  
END $$
  
DELIMITER ;

SELECT findPrice('Adela2');