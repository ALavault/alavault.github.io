
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY IIR IS
    PORT (
        clk : IN STD_LOGIC := '0';

        iir_in : IN signed (31 DOWNTO 0) := (OTHERS => '0');
        sample_valid_in : IN STD_LOGIC := '0';

        iir_out : OUT signed(31 DOWNTO 0) := (OTHERS => '0');
        sample_valid_out : OUT STD_LOGIC := '0';

        busy : OUT STD_LOGIC := '0';

        -- a0, a1, a2, b1, b2 must be multiplied with 2^30 before
        a0 : INTEGER;
        a1 : INTEGER;
        a2 : INTEGER;
        b1 : INTEGER;
        b2 : INTEGER
    );
END IIR;

ARCHITECTURE Behavioral OF IIR IS
    SIGNAL state : INTEGER := 0;

    --signals for multiplier
    SIGNAL mult_in_a, mult_in_b : signed (31 DOWNTO 0) := (OTHERS => '0');
    SIGNAL mult_out : signed (63 DOWNTO 0) := (OTHERS => '0');

    --temp regs and delay regs
    SIGNAL temp : signed (39 DOWNTO 0) := (OTHERS => '0');
    SIGNAL temp_in, in_z1, in_z2, out_z1, out_z2 : signed (31 DOWNTO 0) := (OTHERS => '0');
BEGIN

    -- multiplier
    PROCESS (mult_in_a, mult_in_b)
    BEGIN
        mult_out <= mult_in_a * mult_in_b;
    END PROCESS;

    PROCESS (clk)
    BEGIN
        IF (rising_edge(clk)) THEN
            --start process when valid sample arrived
            IF (sample_valid_in = '1' AND state = 0) THEN
                -- load multiplier with samplein * a0
                mult_in_a <= iir_in;
                temp_in <= iir_in;
                mult_in_b <= to_signed(a0, 32);
                state <= 1;
                busy <= '1';

            ELSIF (state = 1) THEN
                --save result of (samplein*a0) to temp and apply right-shift of 30
                --and load multiplier with in_z1 and a1
                temp <= resize(shift_right(mult_out, 30), 40);
                mult_in_a <= in_z1;
                mult_in_b <= to_signed(a1, 32);
                state <= 2;

            ELSIF (state = 2) THEN
                --save and sum up result of (in_z1*a1) to temp and apply right-shift of 30
                --and load multiplier with in_z2 and a2
                temp <= temp + resize(shift_right(mult_out, 30), 40);
                mult_in_a <= in_z2;
                mult_in_b <= to_signed(a2, 32);
                state <= 3;
            ELSIF (state = 3) THEN
                --save and sum up result of (in_z2*a2) to temp and apply right-shift of 30
                -- and load multiplier with out_z1 and b1
                temp <= temp + resize(shift_right(mult_out, 30), 40);
                mult_in_a <= out_z1;
                mult_in_b <= to_signed(b1, 32);
                state <= 4;

            ELSIF (state = 4) THEN
                --save and sum up (negative) result of (out_z1*b1) and apply right-shift of 30
                --and load multiplier with out_z2 and b2
                temp <= temp - resize(shift_right(mult_out, 30), 40);
                mult_in_a <= out_z2;
                mult_in_b <= to_signed(b2, 32);
                state <= 5;

            ELSIF (state = 5) THEN
                --save and sum up (negative) result of (out_z2*b2) and apply right-shift of 30
                temp <= temp - resize(shift_right(mult_out, 30), 40);
                state <= 6;

            ELSIF (state = 6) THEN
                --save result to output, save all delay registers, apply ouput-valid signal
                iir_out <= resize(temp, 32);
                out_z1 <= resize(temp, 32);
                out_z2 <= out_z1;
                in_z2 <= in_z1;
                in_z1 <= temp_in;
                sample_valid_out <= '1';
                state <= 7;

            ELSIF (state = 7) THEN
                sample_valid_out <= '0';
                state <= 0;
                busy <= '0';
            END IF;
        END IF;
    END PROCESS;
END Behavioral;