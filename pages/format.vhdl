behavioural model

PROCESS (SELECT, a1, a2, a3, a4)
BEGIN
    CASE SELECT IS
        WHEN "00" => OUT <= a1;
        WHEN "01" => OUT <= a2;
        WHEN "10" => OUT <= a3;
        WHEN "11" => OUT <= a4;
        WHEN OTHERS => (OTHERS => '0');
    END CASE;
END PROCESS;

OR

data flow model

WITH SELECT select
OUT <= a1 WHEN "00",
    a2 WHEN "01",
    a3 WHEN "10",
    a4 WHEN "11",
    (OTHERS => '0') WHEN OTHERS;