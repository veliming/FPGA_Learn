library verilog;
use verilog.vl_types.all;
entity mydisp_vlg_check_tst is
    port(
        led             : in     vl_logic;
        Q0              : in     vl_logic;
        Q1              : in     vl_logic;
        Q2              : in     vl_logic;
        Q3              : in     vl_logic;
        smg_en0         : in     vl_logic;
        smg_en1         : in     vl_logic;
        smg_en2         : in     vl_logic;
        smg_en3         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end mydisp_vlg_check_tst;
