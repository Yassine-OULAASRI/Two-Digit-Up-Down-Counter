# Two-Digit-Up-Down-Counter

The project structure consists of four modules:

1. **X1 Module (Up Down BCD Counter and Debouncer):**
   - Utilizes a BCD counter that counts up ("U_D" switch = 0) or down ("U_D" switch = 1) from 00 to 99 or backward with each pulse of the push button "C".
   - The "C" push button signal is debounced at a 100Hz rate from input "CLK_F".
   - Incorporates a "RESET" push button to reset the count to 00.
   - Drives two 4-bit BCD count outputs "Q1s" and "Q10s" representing the Ones and Tens digits.

2. **X2 Module (Digits Count Multiplexer):**
   - Involves a multiplexer that selects between the BCD count inputs "D1s" or "D10s" and outputs the selected count as "D" based on a 100Hz frequency received in the select input "S".
   - Alternately drives counts between the Ones and Tens digits every 5 milliseconds.

3. **X3 Module (BCD to 7-Segment Decoder):**
   - Contains a BCD to 7-segment decoder that decodes the 4-bit count input "BCD" into a corresponding 7-bit output "SEG" (7-segment displays are common anode).

4. **X4 Module (Frequency Divider and Digit Controller):**
   - Divides the 50MHz input clock "CLK" to generate a 100Hz output clock "F."
   - Drives the debounced circuit in X1 and the multiplexer select input in X2.
   - Controls the chip enable pins of the 7-segment displays using complementary outputs "CE1s" and "CE1s" at a 100Hz rate.
