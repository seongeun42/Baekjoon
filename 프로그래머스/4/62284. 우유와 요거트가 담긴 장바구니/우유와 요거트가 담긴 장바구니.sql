SELECT CART_ID
FROM CART_PRODUCTS
WHERE NAME in ("Milk", "Yogurt")
GROUP BY CART_ID
HAVING count(distinct NAME) = 2
ORDER BY CART_ID