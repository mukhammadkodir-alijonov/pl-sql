DECLARE
    L_CREDIT_LIMIT   CUSTOMERS.CREDIT_LIMIT%TYPE;
    L_AVERAGE_CREDIT L_CREDIT_LIMIT%TYPE;
    L_MAX_CREDIT     L_CREDIT_LIMIT%TYPE;
    L_MIN_CREDIT     L_CREDIT_LIMIT%TYPE;
BEGIN
 
    -- get credit limits
    SELECT
        MIN(CREDIT_LIMIT),
        MAX(CREDIT_LIMIT),
        AVG(CREDIT_LIMIT) INTO L_MIN_CREDIT,
        L_MAX_CREDIT,
        L_AVERAGE_CREDIT
    FROM
        CUSTOMERS;
    SELECT
        CREDIT_LIMIT INTO L_CREDIT_LIMIT
    FROM
        CUSTOMERS
    WHERE
        CUSTOMER_ID = 100;
 
    -- show the credits
    DBMS_OUTPUT.PUT_LINE('Min Credit: '
                         || L_MIN_CREDIT);
    DBMS_OUTPUT.PUT_LINE('Max Credit: '
                         || L_MAX_CREDIT);
    DBMS_OUTPUT.PUT_LINE('Avg Credit: '
                         || L_AVERAGE_CREDIT);
 
    -- show customer credit
    DBMS_OUTPUT.PUT_LINE('Customer Credit: '
                         || L_CREDIT_LIMIT);
END;