This code is a verilog representation of a 2:1 MUX. MUX is a circuit which chooses between two inputs depending on the "sel" bit. 
I have chosen a few different techniques to do this. 
1. Continuous assignment style : mux_out is assigned the value a if "sel" is 1, and b if "sel" is 0. 
2. Using "always" statement and the "if" construct. Whenever any of the inputs changes, depending on the value of "sel", "mux_out" either gets the 
value of a or b. This is synthesized into a Priority encoder.
3. Using "always" statement and the "case" construct. Whenever any of the inputs changes, depending on the value of "sel", "mux_out" either gets the 
value of a or b. This is synthesized into a MUX. 
4. Continuously assigned with the MUX equation, mux_out = (sel! & b) | (sel & a); This is behavioural description where we do not have control over
the type of gate
5. Structural assignment where we are able to decide what kind of gates neesd. Hdere, we choose to perform MUX operation with "AN", and "OR" gates. 
