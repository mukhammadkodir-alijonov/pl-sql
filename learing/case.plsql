DECLARE
    C_GRADE CHAR( 1 );
    C_RANK  VARCHAR2( 20 );
BEGIN
    C_GRADE := 'B';
    CASE C_GRADE
        WHEN 'A' THEN
            C_RANK := 'Excellent';
        WHEN 'B' THEN
            C_RANK := 'Very Good';
        WHEN 'C' THEN
            C_RANK := 'Good';
        WHEN 'D' THEN
            C_RANK := 'Fair';
        WHEN 'F' THEN
            C_RANK := 'Poor';
        ELSE
            C_RANK := 'No such grade';
    END CASE;

    DBMS_OUTPUT.PUT_LINE( C_RANK );
END;

DECLARE
    N_SALES      NUMBER;
    N_COMMISSION NUMBER;
BEGIN
    N_SALES := 150000;
    CASE
        WHEN N_SALES > 200000 THEN
            N_COMMISSION := 0.2;
        WHEN N_SALES >= 100000 AND N_SALES < 200000 THEN
            N_COMMISSION := 0.15;
        WHEN N_SALES >= 50000 AND N_SALES < 100000 THEN
            N_COMMISSION := 0.1;
        WHEN N_SALES > 30000 THEN
            N_COMMISSION := 0.05;
        ELSE
            N_COMMISSION := 0;
    END CASE;

    DBMS_OUTPUT.PUT_LINE( 'Commission is '
                          || N_COMMISSION * 100
                          || '%' );
END;