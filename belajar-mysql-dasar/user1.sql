START TRANSACTION;

SELECT 
    *
FROM
    guestbooks;

UPDATE guestbooks 
SET 
    title = 'Diubah oleh User 1'
WHERE
    id = 9;

COMMIT;

START TRANSACTION;

SELECT 
    *
FROM
    products;
    
SELECT 
    *
FROM
    products
WHERE
    id = 'P0001'
FOR UPDATE;

UPDATE products 
SET 
    quantity = quantity - 10
WHERE
    id = 'P0001';
    
COMMIT;

# DEADLOCK

START TRANSACTION;

SELECT 
    *
FROM
    products
WHERE
    id = 'P0001'
FOR UPDATE;

SELECT 
    *
FROM
    products
WHERE
    id = 'P0002'
FOR UPDATE;

# LOCK TABLE READ

LOCK TABLES products READ;

UPDATE products
SET quantity = 100
WHERE id = 'P0001';

UNLOCK TABLES;

# LOCK TABLE WRITE

LOCK TABLES products WRITE;

UPDATE products
SET quantity = 100
WHERE id = 'P0001';

SELECT 
    *
FROM
    products;

UNLOCK TABLES;

# LOCK INSTANCE

LOCK INSTANCE FOR BACKUP;

UNLOCK INSTANCE;