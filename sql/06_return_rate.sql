SELECT COUNT(*) FILTER (WHERE quantity < 0)::FLOAT / COUNT(*) AS return_rate FROM online_retail;
