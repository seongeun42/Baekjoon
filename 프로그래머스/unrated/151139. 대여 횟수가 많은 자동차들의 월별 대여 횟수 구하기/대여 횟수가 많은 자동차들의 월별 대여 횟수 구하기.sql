-- 코드를 입력하세요
SELECT month(START_DATE) MONTH, CAR_ID, count(*) RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE START_DATE BETWEEN "2022-08-01" and "2022-10-31"
AND CAR_ID in
    (SELECT CAR_ID
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE START_DATE BETWEEN "2022-08-01" and "2022-10-31"
    GROUP BY CAR_ID
    HAVING count(HISTORY_ID) >= 5)
GROUP BY CAR_ID, month(START_DATE)
ORDER BY MONTH, CAR_ID desc