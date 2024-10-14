DECLARE
    X NUMBER := 10;
    Y NUMBER := 20;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Natija: '
                         || (X + Y));
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Xato sodir boldi');
END;