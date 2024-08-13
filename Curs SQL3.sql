SELECT invoice_id, price, month_id
FROM a_invoices
WHERE month_id >= 202102

MINUS

SELECT invoice_id, price, month_id
FROM a_invoices
WHERE price <= 300
AND month_id >= 202102;



ALTER TABLE a_orders
ADD COLUMN order_category VARCHAR(10);

UPDATE a_orders
SET order_category = CASE
    WHEN product = 1 THEN 'small'
    WHEN product BETWEEN 2 AND 5 THEN 'medium'
    WHEN product >= 6 THEN 'big'
    ELSE 'unknown'
END;

SELECT 
    c.company_id AS id_companie,           
    c.name AS denumire,                    
    a.order_id AS id_comanda,             
    a.supplier_id AS id_distribuitor,      
    a.acquired_at AS data_comenzii        
FROM 
    xyz c                                  
LEFT JOIN 
    acquisitions a                         
    ON a.company_id = c.company_id         
ORDER BY 
    id_companie;
    
    
    DISABLE TRIGGER trigger_name ON table_name;
        or 
        DROP TRIGGER IF EXISTS trigger_name;
 
 ALTER TABLE table_name NOCHECK CONSTRAINT ALL;
                or 
 ALTER TABLE table_name DISABLE TRIGGER ALL;


SELECT 
    o.order_id,
    DECODE(o.product_id, 
           1, 'Product1',
           2, 'Product2',
           3, 'Product3',
           4, 'Product4',
           5, 'Product5',
           'Unknown Product') AS name
FROM 
    a_orders o;
    