# Importanleitung

1. **Datensatz herunterladen**  
   https://archive.ics.uci.edu/ml/machine-learning-databases/00352/Online%20Retail.xlsx

2. **Als CSV speichern**  
   - Öffnen in Excel/LibreOffice  
   - UTF-8 Encoding  
   - Trennzeichen: `;`

3. **Tabelle vorbereiten**  
   - `unit_price` als TEXT importieren (wegen Komma)  
   - SQL-Datei: `create_online_retail_table_clean.sql` verwenden

4. **Import in pgAdmin**  
   - Format: CSV  
   - Encoding: UTF8  
   - DELIMITER: `;`  
   - Quote/Escape: `"`  
   - Header: aktivieren

5. **Nach dem Import**  
   ```sql
   UPDATE online_retail
   SET unit_price_clean = REPLACE(unit_price, ',', '.')::NUMERIC;
   ```
