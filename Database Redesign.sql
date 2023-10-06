CREATE DATABASE dankim_corporation;
USE dankim_corporation;

CREATE TABLE customers (

  customer_id		INT NOT NULL AUTO_INCREMENT,
  name				VARCHAR(50) NOT NULL UNIQUE,
  address			VARCHAR(255),
  city		    	VARCHAR(50) NOT NULL,
  country			VARCHAR(50) NOT NULL,
  phone				VARCHAR(50) UNIQUE,
  email				VARCHAR(100) UNIQUE,
  PRIMARY KEY		(customer_id)
);

CREATE TABLE items (

  item_id 			INT NOT NULL AUTO_INCREMENT,
  type				VARCHAR(50) NOT NULL,
  name				VARCHAR(50) NOT NULL UNIQUE,
  width				INT,
  weight			INT,
  hs_code			INT,
  PRIMARY KEY		(item_id)
);

CREATE TABLE orders (
  
  order_id			INT NOT NULL AUTO_INCREMENT,
  customer_id		INT NOT NULL,
  item_id			INT NOT NULL,
  export_id			INT NOT NULL,
  import_id  		INT,
  quantity			INT NOT NULL,
  price				DECIMAL(15,2) NOT NULL,
  PRIMARY KEY		(order_id),
  CONSTRAINT		customers
    FOREIGN KEY 	(customer_id)
    REFERENCES		customers(customer_id)
    ON DELETE CASCADE,
  CONSTRAINT		items
    FOREIGN KEY		(item_id)
    REFERENCES		items(item_id)
    ON DELETE CASCADE,
  CONSTRAINT		exports
    FOREIGN KEY		(export_id)
    REFERENCES		exports(export_id)
    ON DELETE CASCADE,
  CONSTRAINT		imports
    FOREIGN KEY		(import_id)
    REFERENCES		imports(import_id)
    ON DELETE CASCADE
);

CREATE TABLE payment (

  payment_id 		INT NOT NULL AUTO_INCREMENT,
  order_id			INT NOT NULL,
  remittance 		DECIMAL(15,2) NOT NULL,
  date				DATE NOT NULL,
  PRIMARY KEY		(payment_id),
  CONSTRAINT		orders
    FOREIGN KEY 	(order_id)
    REFERENCES		orders(order_id)
    ON DELETE CASCADE
);

CREATE TABLE exports (

  export_id			INT NOT NULL AUTO_INCREMENT,
  date				DATE,
  destination		VARCHAR(50) NOT NULL,
  freight			INT NOT NULL,
  PRIMARY KEY		(export_id)
);

CREATE TABLE imports (

  import_id			INT NOT NULL AUTO_INCREMENT,
  arrival			VARCHAR(50) NOT NULL,
  freight			INT NOT NULL,
  PRIMARY KEY		(import_id)
);

CREATE TABLE production (

  production_id		INT NOT NULL AUTO_INCREMENT,
  order_id			INT NOT NULL,
  factory_name		VARCHAR(50) NOT NULL,
  quantity			INT NOT NULL,
  price				INT NOT NULL,
  PRIMARY KEY		(production_id),
  CONSTRAINT		production_orders
    FOREIGN KEY 	(order_id)
    REFERENCES		orders(order_id)
    ON DELETE CASCADE
);

CREATE TABLE exchanges (

  date				DATE NOT NULL UNIQUE,
  rate				DECIMAL(6,2) NOT NULL,
  PRIMARY KEY 		(date)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/exchange_rate.csv'
INTO TABLE dankim_corporation.exchanges
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE datefile (

  date 				DATE NOT NULL UNIQUE
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/date.csv'
INTO TABLE dankim_corporation.datefile
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

# New exchange rate table
CREATE TABLE new_exchanges AS
	SELECT 
	  datefile.date AS date,
	  CASE WHEN exchanges.rate IS NULL THEN @prev ELSE @prev := exchanges.rate END AS rate
	FROM datefile
	LEFT JOIN exchanges
	  ON datefile.date = exchanges.date
	ORDER BY datefile.date ASC;

ALTER TABLE new_exchanges ADD PRIMARY KEY(date);
ALTER TABLE new_exchanges MODIFY rate DECIMAL(6,2);