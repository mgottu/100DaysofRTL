// Author : Medha
// Date created : 02/18/2023

module mux_allstyles (input a, input b, input sel, output mux_out);
    // Below is conditional assignment of MUX 
    //assign mux_out = (sel) ? a : b;

    // Below is using procedural assignment with "if" statement. For this condition, mux_out has to be declared as reg. 
    // Uncomment below lines to execute MUX with "if" statement
   /* reg mux_out;
    always @(*)
        begin
            if (sel==1'b1) mux_out = a;
            else mux_out = b;
        end */
    
    // Below is using procedural assignment with "case" statement. For this condition, mux_out has to be declared as reg.
    // Uncomment below lines to execute MUX with "case" statement
    /* reg mux_out;
    always @(*) 
        begin   
            case(sel)
            1'b0 : mux_out = b;
            1'b1 : mux_out = a;
            endcase
        end*/

    // Below is continuous assignement of MUX, using behavioural model.  
    assign mux_out = ((!sel) & b ) | (sel & a); 

    // We can also declare the MUX with structural assignment by choosing the exact gates we need the MUX to be synthesized with
    /*wire t1, t2;
    and selb (t1, ~sel, b);
    and sela (t2, sel, a);
    or ormux (mux_out, t1, t2);*/

endmodule