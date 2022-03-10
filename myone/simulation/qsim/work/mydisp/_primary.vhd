library verilog;
use verilog.vl_types.all;
entity mydisp is
    port(
        smg_en0         : out    vl_logic;
        smg_en1         : out    vl_logic;
        smg_en2         : out    vl_logic;
        smg_en3         : out    vl_logic;
        Q3              : out    vl_logic;
        clk             : in     vl_logic;
        Q2              : out    vl_logic;
        Q1              : out    vl_logic;
        Q0              : out    vl_logic;
        led             : out    vl_logic
    );
end mydisp;
