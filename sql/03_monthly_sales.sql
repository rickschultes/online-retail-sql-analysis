SELECT TO_CHAR(TO_TIMESTAMP(invoice_date, 'DD.MM.YY HH24:MI'), 'YYYY-MM') AS month, 
    SUM(unit_price_clean * quantity) AS monthly_sales FROM online_retail 
  WHERE quantity > 0 
  GROUP BY month 
  ORDER BY month;
