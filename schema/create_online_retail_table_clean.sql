DROP TABLE IF EXISTS online_retail;

CREATE TABLE online_retail (
  invoice_no TEXT,
  stock_code TEXT,
  description TEXT,
  quantity INTEGER,
  invoice_date TEXT,
  unit_price TEXT,
  customer_id TEXT,
  country TEXT
);

ALTER TABLE online_retail ADD COLUMN unit_price_clean NUMERIC;

UPDATE online_retail
SET unit_price_clean = REPLACE(unit_price, ',', '.')::NUMERIC;
