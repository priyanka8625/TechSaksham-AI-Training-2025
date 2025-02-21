-------------------------------------------------
-- ARITHMETIC OPERATORS
-------------------------------------------------

USE CUSTOMER_ORDERS;

-- FIRST FROM will be executed, then where and then select. 
-- Hence we have to use (unit_price*1.2..) instead of using line_item_amount directly as select will executed as last
SELECT 
	ORDER_ID,
    PRODUCT_ID,
    UNIT_PRICE * 1.2 AS CORRECTED_UNIT_PRICE,
    QUANTITY,
    ((UNIT_PRICE * 1.2 * QUANTITY) - 5) AS LINE_ITEM_AMOUNT
FROM 
	ORDER_ITEMS
WHERE 
	((UNIT_PRICE * 1.2 * QUANTITY) - 5) > 100;
    